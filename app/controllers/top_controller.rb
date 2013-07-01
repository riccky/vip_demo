# coding: utf-8

class TopController < ApplicationController
  layout 'base_with_js'

  def index
    #if current_user
    #  redirect_to :user_root
    #end
    @now = Time.now
    @ip_addresses = TransactionLog::IP_ADDRESSES.map { |e| [e.first, e.last] }
    @user_agents = TransactionLog::USER_AGENTS.map { |e| [e.first, e.last] }

    @user = User.new
    @ia_login_transaction_log = @user.ia_login_transaction_logs.build
  end

  def deny
    reset_session
  end

  def recover
  end
  
  def cert
    redirect_to top_cert_path
  end
  
end
