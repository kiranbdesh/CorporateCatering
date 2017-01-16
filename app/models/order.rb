class Order < ApplicationRecord
  belongs_to :Employee
  belongs_to :Daily_menu
 
  
end
