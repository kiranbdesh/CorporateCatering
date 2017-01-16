class DropTableDailyMenuMenuItem < ActiveRecord::Migration[5.0]
  def change
    drop_table :daily_menu_menu_items
  end
end
