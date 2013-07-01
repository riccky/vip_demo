class AddFailcountToAuthProfiles < ActiveRecord::Migration
  def change
    add_column :auth_profiles, :fail_count, :integer, :default => 0
  end
end
