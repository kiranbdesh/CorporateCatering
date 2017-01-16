class ReNameColumnInDailyMenuMenuItem < ActiveRecord::Migration[5.0]
  def change
    rename_column :daily_menus_menu_items ,:menu_item1_id ,:menu_item_id
  end
end
