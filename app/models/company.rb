class Company < ApplicationRecord
  has_many:employees
  has_and_belongs_to_many:daily_menus 
  validates :name,:phone_number,presence:true
  validates :phone_number ,uniqueness:true
  validates :phone_number,numericality:{only_integer:true}
  validates :name, length: {minimum: 5, maximum: 10}

  before_validation :remove_space
  def remove_space
   self.name = name.squish
  end
end
