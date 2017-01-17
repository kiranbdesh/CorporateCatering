class Vendor < ApplicationRecord

  has_many :menu_items ,dependent: :destroy 

  validates :name,:venue,:phone_number,presence:true
  validates :phone_number,numericality:{only_integer:true}

  before_validation do |vendor|
   puts"In before validation block"
  end
  after_validation  do |vendor|
    puts"In after validation block"
  end
  before_save do |vendor|
   puts"before save"
  end
  around_save do |vendor|
   puts"around save"
  end
  before_create do |user|
   puts"before create"
  end
  around_create do |vendor|
   puts"around create"
  end
  after_create do |vendor|
   puts"after create"
  end
  after_save do |vendor|
   puts"after save"
  end
  after_commit do |vendor|
   puts"after commit"
  end

end
