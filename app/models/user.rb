class User < ActiveRecord::Base
  has_many :ia_login_transaction_logs
  has_many :auth_profiles
  has_many :token_profiles
  has_many :cert_profiles
  has_many :call_profiles
  has_many :sms_profiles
  has_many :money_transfers 

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :username, :login
  # attr_accessible :title, :body
  attr_accessor :login
  
  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    login = conditions.delete(:login)
    where(conditions).where(["lower(username) = :value OR lower(email) = :value",{:value => login.downcase}]).first
  end  
end
