class TopCertController < ApplicationController
  layout 'base'
  def index
    #@login = request.env['SSL_CLIENT_S_DN_CN'].gsub(" BizyBank", "").strip
    @login = request.env['SSL_CLIENT_S_DN_CN']
    @user = User.new
    @ia_login_transaction_log = @user.ia_login_transaction_logs.build
  end
end
