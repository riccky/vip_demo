class InvestigateController < ApplicationController
  layout 'base'
  before_filter :authenticate_user!

  def show
    @last_result =
      current_user.ia_login_transaction_logs.find(:first, :order => 'created_at desc')
  end
end
