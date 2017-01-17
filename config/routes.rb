
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#  get "/vendors/id" ,to: "vendor#show"
 # post "/vendors", to: "vendor#create"
  #get "/vendors/new", to: "vendor#new"
  #get "/vendors/:id/edit" ,to: "vendor#edit"
  #put "/vendors/:id", to: "vendor#update"
  #delete"/vendors/:id", to: "vendor#destroy"
 
 
 resources :companies do
   resources :employees
 end

 resources :vendors do 
 	resources :menu_items
 end
 
#To find location of a particular vendor
 # get "/vendors/locations" ,to: "vendor#location"
#another alternative
=begin 
 resources :vendors do
  get 'locations',on: :collection
  get 'search',on: :collection # for all the vendors
  get 'rating',on: :member  #For a particular vendor
 end
=end
 #alternative for it
  resources :vendors do
  	 collection do
  	 	get 'locations'
  	 	 get 'search'
  	 end
  end

 resources :orders do
 	get 'listing',on: :collection
 end
 
end

