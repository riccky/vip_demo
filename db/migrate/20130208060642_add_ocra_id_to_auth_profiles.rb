class AddOcraIdToAuthProfiles < ActiveRecord::Migration
  def change
    add_column :auth_profiles, :ocra_id, :string
  end
end
