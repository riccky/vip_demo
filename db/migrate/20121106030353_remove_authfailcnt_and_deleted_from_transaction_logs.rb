class RemoveAuthfailcntAndDeletedFromTransactionLogs < ActiveRecord::Migration
  def up
    remove_column :transaction_logs, :auth_fail_cnt
  end

  def down
    add_column :transaction_logs, :auth_fail_cnt, :integer
  end
end
