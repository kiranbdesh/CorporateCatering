class CreateJoinTableDailyMenuMenuItem < ActiveRecord::Migration[5.0]
  def change
    create_join_table :daily_menus, :menu_item1s do |t|
       t.index [:daily_menu_id, :menu_item1_id],name:"dmmi"
       t.index [:menu_item1_id, :daily_menu_id],name:"midm"
    end
  end
end
