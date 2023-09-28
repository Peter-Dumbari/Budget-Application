class AddAmountToCategory < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :amount, :decimal, precision: 8, scale: 2, default: 0.0
  end
end
