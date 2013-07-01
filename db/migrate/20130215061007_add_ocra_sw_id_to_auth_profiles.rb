class AddOcraSwIdToAuthProfiles < ActiveRecord::Migration
  def change
    add_column :auth_profiles, :ocra_sw_id, :string
  end
end
