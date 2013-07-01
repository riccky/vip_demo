class CreateTransactionLogs < ActiveRecord::Migration
  def change
    create_table :transaction_logs do |t|
      t.string :request_id
      t.integer :user_id
      t.string :ip_address
      t.string :user_agent
      t.string :ia_auth_data
      t.text :ia_result

      t.timestamps
    end
  end
end
