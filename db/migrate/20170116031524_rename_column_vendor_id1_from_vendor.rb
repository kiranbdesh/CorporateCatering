class RenameColumnVendorId1FromVendor < ActiveRecord::Migration[5.0]
  def change
    rename_column :vendors , :vendor_id1 ,:vendor_id
  end
end
