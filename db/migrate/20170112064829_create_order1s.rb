class CreateOrder1s < ActiveRecord::Migration[5.0]
  def change
    create_table :order1s do |t|
      t.date :date
      t.integer :price
      t.references :Employee, foreign_key: true
      t.references :Daily_menu, foreign_key: true

      t.timestamps
    end
  end
end
