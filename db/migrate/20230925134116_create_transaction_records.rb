class CreateTransactionRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :transaction_records do |t|
      t.decimal :amount
      t.text :description
      t.string :category
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
