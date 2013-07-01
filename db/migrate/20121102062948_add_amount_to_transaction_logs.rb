class AddAmountToTransactionLogs < ActiveRecord::Migration
  def change
    add_column :transaction_logs, :amount, :string
  end
end
