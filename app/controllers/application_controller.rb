# coding: utf-8

class ApplicationController < ActionController::Base
  require 'yaml'
  include VipUser::VipClient
  include VipToken::VipClientToken
  include Mpki::MpkiClient
  protect_from_forgery

  def redirect_back_or_default(default)
    redirect_to(session[:return_to] || default)
    session[:return_to] = nil
  end

  protected
  def load_vip_client_for_mgmt
    @vip_client_for_mgmt = VipUser::VipClient.new("vipuserservices/ManagementService_1_1")
  end

  def load_vip_client_for_auth
    @vip_client_for_auth = VipUser::VipClient.new("vipuserservices/AuthenticationService_1_1")
  end

  def load_vip_client_for_cr
    @vip_client_for_cr = VipToken::VipClientToken.new("val/soap")
  end
  
  def vip_message(ret)
    advice = "ErrorCode [#{ret}]: "
    message = YAML.load_file("#{Rails.root}/config/vip_message.yml")
    if message.key?(ret)
      advice << message[ret]
    else
      advice << "さぁ？何が悪いのでしょうね・・・"
    end
  end
  
  def load_mpki_client_for_user
    @mpki_client_for_user = Mpki::MpkiClient.new("pki-ws/userManagementService")
  end
  
  def get_mpki_profiles(profile_name)
    profiles = YAML.load_file("#{Rails.root}/config/mpki_profiles.yml")
    profiles[profile_name]    
  end
end
