class AddUserIdToTransactionRecords < ActiveRecord::Migration[7.0]
  def change
    add_reference :transaction_records, :user, null: false, foreign_key: true
  end
end
