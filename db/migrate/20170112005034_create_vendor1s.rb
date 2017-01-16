class CreateVendor1s < ActiveRecord::Migration[5.0]
  def change
    create_table :vendor1s do |t|
      t.string:venue
      t.string :name
      t.integer:phone_number
      t.timestamps
    end
  end
end
