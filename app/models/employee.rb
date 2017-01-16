class Employee < ApplicationRecord
  belongs_to:company
  validates :name,:mobile_number,:email_id,presence:true
  validates :mobile_number,:email_id, uniqueness:true
end
