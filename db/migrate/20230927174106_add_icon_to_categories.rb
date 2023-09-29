class AddIconToCategories < ActiveRecord::Migration[7.0]
  def change
    add_reference :categories, :icon, foreign_key: true  
  end
end
