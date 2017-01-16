class Vendor < ApplicationRecord

  has_many :menu_items ,dependent: :destroy 

  validates :name,:venue,:phone_number,presence:true
  validates :phone_number,numericality:{only_integer:true}
end
