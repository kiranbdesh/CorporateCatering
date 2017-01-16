class RenameTableOrederToOrder < ActiveRecord::Migration[5.0]
  def change
    rename_table :oreders, :orders
  end
end
