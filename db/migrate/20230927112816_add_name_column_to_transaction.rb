class AddNameColumnToTransaction < ActiveRecord::Migration[7.0]
  def change
    add_column :transaction_records, :name, :string
  end
end
