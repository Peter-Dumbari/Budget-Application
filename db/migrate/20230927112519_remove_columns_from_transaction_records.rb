class RemoveColumnsFromTransactionRecords < ActiveRecord::Migration[7.0]
  def change
    remove_column :transaction_records, :category, :string
    remove_column :transaction_records, :user_id, :bigint
  end
end
