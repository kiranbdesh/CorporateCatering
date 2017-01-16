class MenuItem < ApplicationRecord
  belongs_to :vendor
  has_and_belongs_to_many :daily_menus , dependent: :destroy
  validates :name, :price, presence: true
  validates :veg , inclusion: {in: [true,false] }
  
  default_scope { where(veg:true) }
  
   def increment(attribute,by=10)
   self[attribute] += by
  end
  
end
