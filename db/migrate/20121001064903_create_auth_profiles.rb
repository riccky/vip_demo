class CreateAuthProfiles < ActiveRecord::Migration
  def change
    create_table :auth_profiles do |t|
      t.string :auth_type
      t.integer :user_id
      t.string :auth_reference_id
      t.string :type

      t.timestamps
    end
  end
end
