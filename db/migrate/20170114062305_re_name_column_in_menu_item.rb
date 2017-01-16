class ReNameColumnInMenuItem < ActiveRecord::Migration[5.0]
  def change
    rename_column :menu_items ,:vendor1_id ,:vendor_id
  end
end
