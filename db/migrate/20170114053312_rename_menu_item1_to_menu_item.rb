class RenameMenuItem1ToMenuItem < ActiveRecord::Migration[5.0]
  def change
    rename_table :menu_item1s ,:menu_items
  end
end
