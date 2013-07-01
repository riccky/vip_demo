class TokenController < ApplicationController
  layout 'base_with_js'
  before_filter :authenticate_user!
  before_filter :load_user_auth_profiles
  #before_filter :load_vip_client, :only => ['validate_otp']

  def validate
    unless current_user.auth_profiles.any?
      # TODO この flash は redirect しているので、実は渡せない。。
      flash[:notice] = "追加認証方式が登録されておりませんので、登録をお願いします。<br />" <<
        "一旦ログアウトされていますので、もう一度、ログインしなおし、メインページの「追加認証方式の編集」で登録を行ってください。"
      redirect_to deny_path
    end
    if ia_result = current_user.ia_login_transaction_logs.find(:first, :order => 'created_at desc').ia_result
      @device_tag = ia_result['device.tag']
      logger.debug @device_tag
    else
      flash[:notice] = "なぜかデバイスタグが取得できていません。"
      redirect_to :token
      return
    end
  end
  def validate_otp
    otp = params[:otp][:first_otp]
    ret = vip_validate_otp(@current_user.username, otp)
    if ret == nil
      flash.now[:notice] = 'サーバ設定エラーです。管理者に設定を確認してもらってください。'
      render :action => 'validate', :status => :unprocessable_entity and return
    elsif ret == '0000'
      current_user.token_profiles.last.update_attributes :fail_count => 0
      # 送金トランザクション用のフィードバック処理
      if current_user.ia_login_transaction_logs.find(:first, :order => 'created_at desc').bank_code
        if ia_result = current_user.ia_login_transaction_logs.find(:first, :order => 'created_at desc').ia_result
          transaction_id = ia_result['TransactionID']
        else
          flash[:notice] = "追加の認証に成功しましたがフィードバック処理はスキップします。"
          redirect_to user_root_path
          return
        end
        ia_ret = vip_deny_tr_risk(@current_user.username, transaction_id) if ia_result && !transaction_id.blank?
        logger.debug ia_ret
        flash[:notice] = '追加の認証に成功しました!　送金処理を完了しました!'
        redirect_to user_root_path
      # ログイントランザクション用のフィードバック処理
      else
        if ia_result = current_user.ia_login_transaction_logs.find(:first, :order => 'created_at desc').ia_result
          event_id = ia_result['EventID']
        else
          flash[:notice] = "追加の認証に成功しましたがフィードバック処理はスキップします。"
          redirect_to user_root_path
          return
        end
        ia_ret = vip_deny_risk(@current_user.username, event_id, params[:ia_auth_data]) if ia_result && !event_id.blank?
        logger.debug ia_ret
        flash[:notice] = '追加の認証に成功しました!'
        redirect_to user_root_path
      end
    else
      current_second_token = current_user.token_profiles.last
      # 送金トランザクション用のフィードバック処理
      if current_user.ia_login_transaction_logs.find(:first, :order => 'created_at desc').bank_code
        if current_second_token.fail_count < 2
          current_second_token.fail_count += 1
          current_second_token.save!
          redirect_to :token, :flash => {:notice => vip_message(ret)}
          return
        else
          if ia_result = current_user.ia_login_transaction_logs.find(:first, :order => 'created_at desc').ia_result
            transaction_id = ia_result['TransactionID']
          else
            flash[:notice] = '追加の認証に失敗しました!フィードバック処理はできませんでした。'
            redirect_to deny_path
            return
          end
          ia_ret = vip_confirm_tr_risk(@current_user.username, transaction_id) if ia_result && !transaction_id.blank?
          logger.debug ia_ret
          flash[:notice] = '追加の認証に失敗しました!'
          redirect_to deny_path
        end
      # ログイントランザクション用のフィードバック処理
      else
        if current_second_token.fail_count < 2
          current_second_token.fail_count += 1
          current_second_token.save!
          redirect_to :token, :flash => {:notice => vip_message(ret)}
          return
        else
          if ia_result = current_user.ia_login_transaction_logs.find(:first, :order => 'created_at desc').ia_result
            event_id = ia_result['EventID']
          else
            flash[:notice] = '追加の認証に失敗しました!フィードバック処理はできませんでした。'
            redirect_to deny_path
            return
          end
          ia_ret = vip_confirm_risk(@current_user.username, event_id) if ia_result && !event_id.blank?
          logger.debug ia_ret
          flash[:notice] = '追加の認証に失敗しました!'
          redirect_to deny_path
        end
      end
    end
  end
  
  private

  def load_user_auth_profiles
    @user = current_user
    @token_profile = @user.token_profiles.find_by_auth_type(Ia::AUTH_PROFILE_VIP_AUTH)
  end

  def vip_validate_otp(username, otp)
    logger.debug "request VIP-Auth to VIP site....."
    vip_client_for_auth = load_vip_client_for_auth
    vip_client_for_auth.authenticate_user(username, otp)
  end

  def vip_deny_risk(username, event_id, ia_auth_data)
    logger.debug "request IA to VIP site....."
    vip_client_for_auth = load_vip_client_for_auth
    vip_client_for_auth.deny_risk(username, event_id, ia_auth_data)
  end

  def vip_confirm_risk(username, event_id)
    logger.debug "request IA to VIP site....."
    vip_client_for_auth = load_vip_client_for_auth
    vip_client_for_auth.confirm_risk(username, event_id)
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

end
