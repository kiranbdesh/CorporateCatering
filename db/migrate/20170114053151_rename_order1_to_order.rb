class RenameOrder1ToOrder < ActiveRecord::Migration[5.0]
  def change
    rename_table :order1s, :oreders
  end
end
