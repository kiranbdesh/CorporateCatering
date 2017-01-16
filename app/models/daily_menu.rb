class DailyMenu < ApplicationRecord
  has_and_belongs_to_many:menu_items
  has_and_belongs_to_many:companies
end
