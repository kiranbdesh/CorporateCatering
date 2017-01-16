class CreateMenuItem1s < ActiveRecord::Migration[5.0]
  def change
    create_table :menu_item1s do |t|
      t.string :name
      t.integer :price
      t.boolean :veg

      t.timestamps
    end
  end
end
