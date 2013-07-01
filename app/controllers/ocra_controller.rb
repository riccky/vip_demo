# coding: utf-8
require 'digest/sha1'

class OcraController < ApplicationController
  layout 'base'
  before_filter :authenticate_user!
  before_filter :load_user_auth_profiles
  
  def index
    if current_user.token_profiles.last.ocra_sw_id == nil
      challenge_id = rand(4).to_s
      @msg = ocra_message(challenge_id)
      @last_result =
        current_user.ia_login_transaction_logs.find(:first, :order => 'created_at desc')
        @challenge = challenge_generator(challenge_id, @last_result.bank_code, @last_result.dst_account, @last_result.amount, nil)
    else
      @moving_factor = Time.now.strftime("%Y%m%d%H%M%S")
      @ocra_sw = "true"
      challenge_id = "4"
      @msg = ocra_message(challenge_id)
      @last_result =
        current_user.ia_login_transaction_logs.find(:first, :order => 'created_at desc')
      @challenge = challenge_generator(challenge_id, @last_result.bank_code, @last_result.dst_account, @last_result.amount, @moving_factor)
      @qr_str = generate_qrcode(@challenge, @last_result.bank_code, @last_result.dst_account, @last_result.amount, @moving_factor)
      File.delete("#{Rails.root}/app/assets/images/" + @moving_factor + ".png")
    end
  end

  def validate_cr
    challenge = params[:challenge]
    response = params[:otp][:response]
    if current_user.token_profiles.last.ocra_sw_id == nil
      ret = vip_validate_cr(current_user.token_profiles.last.ocra_id, challenge, nil, response)
    else
      ret = vip_validate_cr(current_user.token_profiles.last.ocra_sw_id, nil, challenge, response)
    end
    logger.debug ret
    if ret == nil
      flash.now[:notice] = 'サーバ設定エラーです。管理者に設定を確認してもらってください。'
      render :action => 'validate_cr', :status => :unprocessable_entity and return
    elsif ret == '0000'
      current_user.token_profiles.last.update_attributes :fail_count => 0
      if ia_result = current_user.ia_login_transaction_logs.find(:first, :order => 'created_at desc').ia_result
        transaction_id = ia_result['TransactionID']
        ia_ret = vip_deny_tr_risk(@current_user.username, transaction_id) if ia_result && !transaction_id.blank?
        logger.debug ia_ret
        flash[:notice] = '追加の認証に成功しました!　送金処理を完了しました!'
        redirect_to user_root_path
      else
        flash[:notice] = "追加の認証に成功しましたがフィードバック処理はスキップします。"
        redirect_to user_root_path
        return
      end
    else
      current_second_token = current_user.token_profiles.last
      if current_second_token.fail_count < 2
        current_second_token.fail_count += 1
        current_second_token.save!
        redirect_to :ocra, :flash => {:notice => vip_message(ret)}
        return
      else
        if ia_result = current_user.ia_login_transaction_logs.find(:first, :order => 'created_at desc').ia_result
          transaction_id = ia_result['TransactionID']
          ia_ret = vip_confirm_tr_risk(@current_user.username, transaction_id) if ia_result && !transaction_id.blank?
          logger.debug ia_ret
          flash[:notice] = '追加の認証に失敗しました!'
          redirect_to deny_path
        else
          flash[:notice] = '追加の認証に失敗しました!フィードバック処理はできませんでした。'
          redirect_to deny_path
          return
        end
      end
    end
  end

  private
    
  def load_user_auth_profiles
    @user = current_user
    @token_profile = @user.token_profiles.find_by_auth_type(Ia::AUTH_PROFILE_VIP_AUTH)
  end

  def vip_validate_cr(token_id, challenge_n, challenge_h, response)
    logger.debug "Validate CR to VIP-Auth site....."
    vip_client_for_cr = load_vip_client_for_cr
    vip_client_for_cr.validate_cr(token_id, challenge_n, challenge_h, response)
  end
  
  def vip_deny_tr_risk(username, transaction_id)
    logger.debug "request IA to VIP site....."
    vip_client_for_auth = load_vip_client_for_auth
    vip_client_for_auth.deny_tr_risk(username, transaction_id)
  end

  def vip_confirm_tr_risk(username, transaction_id)
    logger.debug "request IA to VIP site....."
    vip_client_for_auth = load_vip_client_for_auth
    vip_client_for_auth.confirm_tr_risk(username, transaction_id)
  end

  def ocra_message(msg_id)
    message = YAML.load_file("#{Rails.root}/config/ocra_message.yml")
    message[msg_id]
  end

  def challenge_generator(challenge_id, bank_code, dst_account, amount, moving_factor)
    challenge = ""
    case challenge_id
    when '0'
      challenge << dst_account[0, 4] << amount[0, 2]
    when '1'
      challenge << dst_account[-4, 4] << amount[-2, 2]
    when '2'
      challenge << dst_account[0, 4] << amount[-2, 2]
    when '3'
      challenge << dst_account[-4, 4] << amount[0, 2]
    when '4'
      challenge = "go2symantec"
      challenge << moving_factor << bank_code << dst_account << amount
      Digest::SHA1.hexdigest(challenge)
    end
  end
  
  def generate_qrcode(challenge, bank_code, dst_account, amount, moving_factor)
    output_file_path="#{Rails.root}/app/assets/images/" + moving_factor + ".png"
    qr_str = "tm="
    qr_str << moving_factor
    qr_str << "&ch=" << challenge
    qr_str << "&bk=" << bank_code
    qr_str << "&ds=" << dst_account
    qr_str << "&am=" << amount
    Qr4r::encode(qr_str, output_file_path, :pixel_size => 2)
    qr_str = "data:image/png;base64,"
    qr_str << Base64.encode64(File.read(output_file_path))
  end    
end
