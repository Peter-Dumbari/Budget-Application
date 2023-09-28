class UpdateTransaction < ActiveRecord::Migration[7.0]
  def change
    # Change the column 'amount' in the 'transaction_records' table
    change_column :transaction_records, :amount, :decimal, precision: 8, scale: 2, default: 0.0

    # Remove the column 'decription' (typo) from the 'transaction_records' table
    remove_column :transaction_records, :description, :text
  end
end

