class RenameUrlToIconUrlInIcons < ActiveRecord::Migration[7.0]
  def change
    rename_column :icons, :url, :icon_url
  end
end
