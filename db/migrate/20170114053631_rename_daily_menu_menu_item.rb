class RenameDailyMenuMenuItem < ActiveRecord::Migration[5.0]
  def change
    rename_table :daily_menus_menu_item1s ,:daily_menus_menu_items
  end
end
