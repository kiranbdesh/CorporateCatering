class MenuItem < ApplicationRecord
  belongs_to :vendor
  has_and_belongs_to_many :daily_menus , dependent: :destroy
  validates :name, :price, presence: true
  validates :veg , inclusion: {in: [true,false] }
 # validates :name ,uniqueness: {scopes: :vendor_id} ===> This is also valid
 # method to add uniquness on menu_item name in vendor_id scope
  
  #default_scope { where(veg:true) }
  
  scope :veg ,->{where(veg: true)}
  before_create :check_if_record_exists

 # Check whether record containing "biryani" as a name exists or not for a particular vendor
  def check_if_record_exists
	if MenuItem.exists?(:name =>self.name,:vendor_id=>self.vendor_id)
		puts"This record already exists"
		throw:abort
	else
		return true
	end
  end
end



