# coding: utf-8

class Users::RegistrationsController < Devise::RegistrationsController
  layout 'base'
  
  def after_sign_up_path_for(resource)
    auth_edit_path
  end
end
