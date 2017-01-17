# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  #Add vendor records
  vendor1 = Vendor.find_or_create_by({name:"food plaza",venue:"baner,pune",phone_number: 789654353}).save!
  vendor2 = Vendor.find_or_create_by({name:"rolls mania",venue:"kupwad,sangli",phone_number:753421311}).save!
  vendor3 = Vendor.find_or_create_by({name:"caffa",venue:"vishrambag,sangli",phone_number:123456}).save!
  vendor4 = Vendor.find_or_create_by({name:"venkys",venue:"swarget,pune",phone_number:6789045}).save!
  vendor5 = Vendor.find_or_create_by({name:"kamat mourya",venue:"aagarkar,pune",phone_number:6789046}).save!

   
  # vendor_array = [vendor1 ,vendor2 ,vendor3 ,vendor4 ,vendor5]
 
   menu_item_array = [{name:"pani puri",price:40,veg:true},
                       {name:"pav bhaji",price:50,veg:true},
                       {name:"rice plate",price:60,veg:true},
                       {name:"ragda patis",price:30,veg:true},
                       {name:"spdp",price:45,veg:true}]

    menu_item_array.each do |menu_item|
    	vendor1.menu_items.find_or_create_by(menu_item)
    end

     menu_item_array = [{name:"mix veg roll",price:40,veg:true},
                       {name:"allu roll",price:50,veg:true},
                       {name:"egg roll",price:80,veg:false},
                       {name:"chicken roll",price:90,veg:false},
                       {name:"cold coffee",price:45,veg:true}]

    menu_item_array.each do |menu_item|
    	vendor2.menu_items.find_or_create_by(menu_item)
    end
      menu_item_array = [{name:"pani puri",price:80,veg:true},
                       {name:"chicken manchurian",price:100,veg:false},
                       {name:"chicken biryani",price:60,veg:false}]

    menu_item_array.each do |menu_item|
    	vendor3.menu_items.find_or_create_by(menu_item)
    end

     menu_item_array = [{name:"pani puri",price:30,veg:true},
                       {name:"pav bhaji",price:40,veg:true},
                       {name:"rice plate",price:50,veg:true}]
  
     menu_item_array.each do |menu_item|
    	vendor4.menu_items.find_or_create_by(menu_item)
    end

     menu_item_array = [{name:"egg roll",price:80,veg:false},
                       {name:"chicken roll",price:90,veg:false},:
                       {name:"cold coffee",price:45,veg:true}]

    menu_item_array.each do |menu_item|
    	vendor5.menu_items.find_or_create_by(menu_item)
    end

    company1 = Company.find_or_create_by({name: "josh software",phone_number:432165}).save!
   company2 = Company.find_or_create_by({name: "eaton",phone_number: 932166}).save!
    company3 = Company.find_or_create_by({name: "pubmatic",phone_number: 432167}).save!
    company4 = Company.find_or_create_by({name: "veritas",phone_number: 432168}).save!
    company5 = Company.find_or_create_by({name: "symantec",phone_number: 432169}).save!

    employee_array = [{name: "kiran",mobile_number: 9421215727,designation: "application developer",
    	               email_id: "kiran@joshsoftware.com"},
    	               {name: "payal",mobile_number: 9421895727,designation: "hr",
    	               email_id: "payal@joshsoftware.com"},
    	               {name: "akshay",mobile_number: 9089212127,designation: "android application developer",
    	               email_id: "akshay@joshsoftware.com"},
    	               {name: "tejaswini",mobile_number: 9421215727,designation: "database administrator",
    	                email_id: "tejaswini@joshsoftware.com"}]

    employee_array.each do |employee|
    	company1.employees.find_or_create_by(employee)
    end

    employee_array = [{name: "shubham pagarwar",mobile_number: 6789345727,designation: "quality analyst",
    	               email_id: "shubhamp@eaton.com"},
    	               {name: "shital gaikwad",mobile_number: 9421895027,designation: "application developer",
    	               email_id: "shitalg@eaton.com"},
    	              {name: "snehal bhosale",mobile_number: 9089212127,designation: "android application developer",
    	               email_id: "snehalb@eaton.com"}]
    employee_array.each do |employee|
    	company2.employees.find_or_create_by(employee)
    end

    employee_array = [{name: "padmaja huddar",mobile_number: 679093457,designation: "data analyst",
    	               email_id: "padmajah@eaton.com"},
    	               {name: "vibha hadule",mobile_number: 9428995027,designation: "application developer",
    	               email_id: "vibhah@eaton.com"},
    	              {name: "pradnya patil",mobile_number: 908928067,designation: "hr",
    	               email_id: "pradnyap@eaton.com"}]
    employee_array.each do |employee|
    	company3.employees.find_or_create_by(employee)
    end
