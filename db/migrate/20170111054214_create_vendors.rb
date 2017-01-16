class CreateVendors < ActiveRecord::Migration[5.0]
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :venue
      t.integer :phone_number
      t.timestamps
    end
  end
end
