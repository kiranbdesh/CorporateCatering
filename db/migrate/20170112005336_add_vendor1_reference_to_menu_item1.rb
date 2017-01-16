class AddVendor1ReferenceToMenuItem1 < ActiveRecord::Migration[5.0]
  def change
   add_reference :menu_item1s ,:vendor1 ,foreign_key:true,index:true
  end
end
