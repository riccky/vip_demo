# coding: utf-8

class AuthProfilesController < ApplicationController
  layout 'base'
  before_filter :authenticate_user!
  before_filter :load_user_auth_profiles, :only => ['create', 'edit']
  
  def edit
    @user = User.new
    flash.now[:notice] = "続けて追加認証方式の登録をお願いします。"
  end

  def create
    if (params[:cert_profile][:auth_type] == "none" && params[:token_profile][:auth_type] == "none")
      flash.now[:notice] = '追加認証方式を1つ選択してください。'
      render :action => 'edit', :status => :unprocessable_entity and return
    end

    added_challenge = []
    deleted_challenge_str = if_detached_checkbox_destroy_them # TODO チェックボックスを外されてボタンを押された時に削除確認のメッセージを追加した方がいい

    # クライアント証明書認証
    if params[:cert_profile][:auth_type] == Ia::AUTH_PROFILE_CLIENT_CERT
      @cert_profile = CertProfile.new(:auth_type => Ia::AUTH_PROFILE_CLIENT_CERT)
      if params[:cert_profile][:auth_reference_id] == "123456"
        ret_create_user = create_mpki_user
        logger.debug ret_create_user
        if ret_create_user['statusCode'] == "0"
          oid = get_profile_oid(params[:pki_client])
          ret_create_passcode = create_mpki_passcode(oid)
          logger.debug ret_create_passcode
          if ret_create_passcode['statusCode'] == "0"
            @user.cert_profiles.destroy_all
            @user.cert_profiles << @cert_profile
            logger.debug create_get_cert_uri(ret_create_passcode['seatId'], ret_create_passcode['passcode'], oid)
            @get_cert_uri = create_get_cert_uri(ret_create_passcode['seatId'], ret_create_passcode['passcode'], oid)
            flash.now[:notice] = "証明書取得URLから証明書を取得して下さい。証明書取得後にトップページから証明書ログインして下さい。"
            render :action => 'edit', :status => :unprocessable_entity and return  
          else
            flash.now[:notice] = "システムエラーです。管理者にお問い合わせ下さい。"
            render :action => 'edit', :status => :unprocessable_entity and return
          end
        else
          flash.now[:notice] = "システムエラーです。管理者にお問い合わせ下さい。"
          render :action => 'edit', :status => :unprocessable_entity and return
        end
      else
        flash.now[:notice] = "うーん、証明書取得コードがあっていないです。"
        render :action => 'edit', :status => :unprocessable_entity and return
      end
    end
    
    # VIP-Auth Security トークン
    if params[:token_profile][:auth_type] == Ia::AUTH_PROFILE_VIP_AUTH
      if params[:token_profile][:auth_reference_id] == 'QAMT64175943'
      #if params[:ocra_sw_id] == "true"
        @token_profile = TokenProfile.new(:auth_type => Ia::AUTH_PROFILE_VIP_AUTH,
          :auth_reference_id => params[:token_profile][:auth_reference_id],
          :ocra_sw_id => 'VSCR55963886')
          #params[:token_profile]["VSCR55963886"])
          #:ocra_sw_id => params[:token_profile][:ocra_id])
      else
        @token_profile = TokenProfile.new(:auth_type => Ia::AUTH_PROFILE_VIP_AUTH,
          :auth_reference_id => params[:token_profile][:auth_reference_id],
          :ocra_id => params[:token_profile][:ocra_id])
      end
        
      ret_create_user = create_vip_user
      logger.debug ret_create_user
      if ((ret_create_user == '0000') || (ret_create_user == '6002'))
        ret_credential = register_vip_token
        logger.debug ret_credential
        if ret_credential == '0000'
          # Activateion 正常終了
          @user.token_profiles.destroy_all
          @user.token_profiles << @token_profile
          added_challenge << '「VIP-Auth Security トークン」'
        else
          flash.now[:notice] = vip_message(ret_credential)
          render :action => 'edit', :status => :unprocessable_entity and return
        end
      else
        flash.now[:notice] = vip_message(ret_create_user)
        render :action => 'edit', :status => :unprocessable_entity and return
      end
    end
=begin   
    if params[:call_profile][:auth_type] == 'Phone'
      added_challenge << '「電話を利用したワンタイムパスワード (うそ!!)」'
    end
    
    if params[:call_profile][:auth_type] == 'SMS'
      added_challenge << '「SMS を利用した利用したワンタイムパスワード (うそ!!)」'
    end
=end
    notice_message = ''
    notice_message << deleted_challenge_str unless deleted_challenge_str.blank?
    notice_message << (added_challenge * '、' << 'の追加認証方式を登録しました。一旦ログアウトして下さい!!')
    flash[:notice] = notice_message
    redirect_to user_root_path
  end

  private
  def load_user_auth_profiles
    @user = current_user
    # @TODO 引き方をもう少し考える。
    @cert_profile = @user.cert_profiles.find_by_auth_type(Ia::AUTH_PROFILE_CLIENT_CERT)
    @token_profile = @user.token_profiles.find_by_auth_type(Ia::AUTH_PROFILE_VIP_AUTH)
    @call_profile = @user.call_profiles.find_by_auth_type('Phone')
    @sms_profile = @user.sms_profiles.find_by_auth_type('SMS')
  end
  
  def challenge_selected?
    challenges = [
      'cert_profile',
      'token_profile',
      'call_profile',
      'sms_profile'
      ]
    logger.debug challenges.reject{ |e| params[e][:auth_type] == "none" }
    challenges.reject{ |e| params[e][:auth_type] == "none" }.any?
  end

  def if_detached_checkbox_destroy_them
    deleted_challenge = []
      
    if @cert_profile && params[:cert_profile][:auth_type] == 'none'
      logger.debug "deleting cert ....."
      @cert_profile.destroy
      deleted_challenge << '「クライアント証明書認証」'
    end

    if @token_profile && params[:token_profile][:auth_type] == 'none'
      logger.debug "deleting token ....."
      @token_profile.destroy
      deleted_challenge << '「VIP-Auth Security トークン」'
    end

    if deleted_challenge.any?
      deleted_challenge_str = (deleted_challenge * '、' << 'の削除を行いました。<br />')
    else
      deleted_challenge_str =  deleted_challenge * ''
    end
    deleted_challenge_str
  end
  
  def create_mpki_user
    # MPKI User 登録
    logger.debug "creating MPKI User to MPKI site....."
    mpki_client_for_user = load_mpki_client_for_user
    mpki_client_for_user.create_user(@current_user.username)
  end
  
  def create_mpki_passcode(oid)
    # MPKI Passcode 登録
    logger.debug "creating MPKI passcode to MPKI site....."
    mpki_client_for_user = load_mpki_client_for_user
    mpki_client_for_user.create_passcode(@current_user.username, oid)
  end

  def create_get_cert_uri(seatId, passcode, oid)
    if (request.env['HTTP_USER_AGENT'].include?("iPhone") || request.env['HTTP_USER_AGENT'].include?("iPad"))
      cert_uri = "https://pki.symauth.com/certificate-service/apple/index.xhtml?ac=155993&pf="
      cert_uri << oid
      cert_uri << "&seat_id="
      cert_uri << seatId
      cert_uri << "&pc="
      cert_uri << passcode
    else
      cert_uri = "https://pki.symauth.com/certificate-service?ac=155993&pf="
      cert_uri << oid
      cert_uri << "&id="
      cert_uri << seatId
      cert_uri << "&pc="
      cert_uri << passcode
    end
  end
  
  def get_profile_oid(pki_client)
    logger.debug request.env['HTTP_USER_AGENT']
    if pki_client == "true"
      get_mpki_profiles("client")
    elsif (request.env['HTTP_USER_AGENT'].include?("iPhone") || request.env['HTTP_USER_AGENT'].include?("iPad"))
      get_mpki_profiles("ios")
    else
      get_mpki_profiles("browser")
    end
  end
  
  def create_vip_user
    # VIP User 登録
    logger.debug "creating VIP-Auth User to VIP site....."
    vip_client_for_mgmt = load_vip_client_for_mgmt
    vip_client_for_mgmt.create_user(@current_user.username)
  end
  
  def register_vip_token
    # VIP-Auth トークンの登録
    logger.debug "registering VIP-Auth Token to VIP site....."
    token_id = @token_profile.auth_reference_id
    otp = params[:new_token][:first_otp]
    vip_client_for_mgmt = load_vip_client_for_mgmt
    vip_client_for_mgmt.add_credential(@current_user.username, token_id, otp)
  end
end