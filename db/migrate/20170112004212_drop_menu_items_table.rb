class DropMenuItemsTable < ActiveRecord::Migration[5.0]
  def up
   drop_table :menu_items
  end
  def down
   raise ActiveRecord::IrreversibleMigration
  end
end
