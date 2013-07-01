# coding: utf-8

class MoneyTransferController < ApplicationController
  layout 'base_with_js'
  before_filter :authenticate_user!
  before_filter :load_user_auth_profiles, :only => ['create', 'new']

  def new
    #@ia_login_transaction_log = @current_user.ia_login_transaction_logs
    @ia_login_transaction_log =
      current_user.ia_login_transaction_logs.find(:first, :order => 'created_at desc')
  end

  def index
  end

  def create
    if @ia_login_transaction_log = @current_user.ia_login_transaction_logs
      ip_address = @ia_login_transaction_log.find(:first, :order => 'created_at desc').ip_address
      user_agent = @ia_login_transaction_log.find(:first, :order => 'created_at desc').user_agent
      username = @current_user.username
      bank_code = params[:money_transfer][:bank_code]
      dst_account = params[:money_transfer][:dst_account]
      amount = params[:money_transfer][:amount]
      ia_auth_data = params[:ia_auth_data]
    end

    @ia_login_transaction_log = @current_user.ia_login_transaction_logs.create(
      :ip_address => ip_address,
      :user_agent => user_agent,
      :bank_code => bank_code,
      :dst_account => dst_account,
      :amount => amount    
    )
    
    begin
      ret = vip_evaluate_tr_risk(
        username,
        ip_address,
        user_agent,
        ia_auth_data,
        bank_code,
        dst_account,
        amount
        )
      logger.debug ret
      @ia_login_transaction_log.update_attributes(:ia_result => ret)
      if ret['StatusCode'] == "6009"
        if current_user.token_profiles.last.ocra_sw_id == "VSCR55963886" then
          redirect_to :ocra
        else
          redirect_to second_auth_path_for_user
        end
       #if current_user.token_profiles.last.ocra_id == "" then
       #   redirect_to second_auth_path_for_user 
       #else 
       #   redirect_to :ocra
       #end
      elsif ret['StatusCode'] == "0000"
        flash[:notice] = "送金処理を実施しました!!"
        redirect_to user_root_path
      end
      
      rescue => e
        logger.error "!!IA Connection Error occured!!"
        logger.error "-- IA says that:\n #{e}\n--"
        logger.error $!
        flash[:notice] = "実は IA でエラーが発生しており、IA の処理はスキップされています。詳細はログファイルを確認下さい。"
        redirect_to user_root_path 
        return
    end
  end

  private
  def load_user_auth_profiles
    @user = current_user
    # @TODO 引き方をもう少し考える。
    #@challenge_response_profile = @user.challenge_response_profiles.find_by_auth_type(Ia::AUTH_PROFILE_CLIENT_CERT)
    @token_profile = @user.token_profiles.find_by_auth_type(Ia::AUTH_PROFILE_VIP_AUTH)
    #@call_profile = @user.call_profiles.find_by_auth_type('Phone')
    #@sms_profile = @user.sms_profiles.find_by_auth_type('SMS')
  end

  # ユーザが使用している第2要素を使うためのパス
  def second_auth_path_for_user
    profiles = current_user.auth_profiles
    this_time_profile = profiles[rand(profiles.size)]
    case this_time_profile
    when ChallengeResponseProfile
      { :controller => '/challenge', :action => 'questions' }
    when TokenProfile
      { :controller => '/token', :action => 'validate' }
    else
      flash[:notice] = '追加の認証方式が登録されていません!'
      { :controller => '/top', :action => 'index' }
    end
  end

  def vip_evaluate_tr_risk(username, ip_address, user_agent, ia_auth_data, bank_code, dst_account, amount)
    logger.debug "request VIP-IA to VIP site....."
    vip_client_for_auth = load_vip_client_for_auth
    vip_client_for_auth.evaluate_tr_risk(username, ip_address, user_agent, ia_auth_data, bank_code, dst_account, amount)
  end

end
