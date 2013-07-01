class AddDstaccountToTransactionLogs < ActiveRecord::Migration
  def change
    add_column :transaction_logs, :dst_account, :string
  end
end
