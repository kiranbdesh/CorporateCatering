class RenameVendor1ToVendor < ActiveRecord::Migration[5.0]
  def change
    rename_table :vendor1s, :vendors
  end
end
