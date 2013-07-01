class AddBankcodeToTransactionLogs < ActiveRecord::Migration
  def change
    add_column :transaction_logs, :bank_code, :string
  end
end
