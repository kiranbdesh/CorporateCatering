class Employee < ApplicationRecord
  belongs_to :company
  validates :name,:mobile_number,:email_id,presence:true
  validates :mobile_number,:email_id, uniqueness:true
  before_destroy :company_must_have_one_hr

  # company should conatin at least one hr
  def company_must_have_one_hr
    if self.designation =="hr"
    	if Employee.where(:company_id=>self.company_id,:designation=>"hr").count ==1
    		throw :abort
    	else
    		return true
    	end
    end
  end
end
