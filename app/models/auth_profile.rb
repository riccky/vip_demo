class AuthProfile < ActiveRecord::Base
  attr_accessible :auth_reference_id, :auth_type, :type, :user_id, :fail_count, :ocra_id, :ocra_sw_id
  belongs_to :user
  
  validates_uniqueness_of :auth_type, :scope => :user_id
end
