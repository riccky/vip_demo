# coding: utf-8

class Users::SessionsController < Devise::SessionsController
  
  def new
    redirect_to root_path
  end
  
  def create
    if user_signed_in?
      @ia_login_transaction_log = @current_user.ia_login_transaction_logs.create(params[:ia_login_transaction_log])
      if @ia_login_transaction_log.force_challenge?
        redirect_to second_auth_path_for_user and return
      elsif @ia_login_transaction_log.skip_validation?
        redirect_to user_root_path and return
      end
      # Call IA
      begin
        ret = vip_evaluate_risk(
          @current_user.username,
          @ia_login_transaction_log.ip_address,
          @ia_login_transaction_log.user_agent,
          params[:ia_auth_data]
        )
        logger.debug ret
        @ia_login_transaction_log.update_attributes(:ia_result => ret)  
        if ret['StatusCode'] == "6009"
          redirect_to second_auth_path_for_user
        elsif ret['StatusCode'] == "0000"
          redirect_to user_root_path 
        end
      
      rescue => e
        logger.error "!!IA Connection Error occured!!"
        logger.error "-- IA says that:\n #{e}\n--"
        logger.error $!
        flash[:notice] = "実は IA でエラーが発生しており、IA の処理はスキップされています。<br />詳細はログファイルを確認下さい。"
        redirect_to user_root_path
        return
      end
    else
      redirect_to :root, :flash => {:notice => "ユーザ ID、または、パスワードに誤りがあります。"}
    end
  end

  private
  
  # ユーザが使用している第2要素を使うためのパス
  def second_auth_path_for_user
    profiles = current_user.auth_profiles
    this_time_profile = profiles[rand(profiles.size)]
    case this_time_profile
    when ChallengeResponseProfile
      { :controller => '/challenge', :action => 'questions' }
    when TokenProfile
      { :controller => '/token', :action => 'validate' }
    when CertProfile
      flash[:notice] = '証明書でログインして下さい'
      { :controller => '/top', :action => 'index' }
    else
      flash[:notice] = '追加の認証方式が登録されていません!'
      { :controller => '/top', :action => 'index' }
    end
  end

  def vip_evaluate_risk(username, ip_address, user_agent, ia_auth_data)
    logger.debug "request VIP-IA to VIP site....."
    vip_client_for_auth = load_vip_client_for_auth
    vip_client_for_auth.evaluate_risk(username, ip_address, user_agent, ia_auth_data)
  end
end
