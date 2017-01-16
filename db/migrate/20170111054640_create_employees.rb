class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :mobile_number
      t.string :email_id

      t.timestamps
    end
  end
end
