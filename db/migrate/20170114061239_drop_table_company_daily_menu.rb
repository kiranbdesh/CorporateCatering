class DropTableCompanyDailyMenu < ActiveRecord::Migration[5.0]
  def change
    drop_table :company_daily_menus
  end
end
