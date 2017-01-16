class DropVendorTable < ActiveRecord::Migration[5.0]
  def up
   drop_table :vendors
  end
  def down
   raise ActiveRecord::IrreversibleMigration
  end
end
