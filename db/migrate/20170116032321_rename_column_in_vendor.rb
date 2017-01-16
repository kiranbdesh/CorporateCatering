class RenameColumnInVendor < ActiveRecord::Migration[5.0]
  def change
    rename_column :vendors ,:id ,:vendor_id
  end
end
