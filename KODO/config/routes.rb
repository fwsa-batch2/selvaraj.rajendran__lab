Rails.application.routes.draw do
 

  resources :categories
resources :blogs
  get 'courses/addCourse'
  get 'courses/index'
  get 'homes/about'
  get 'homes/index'
  get '/courses/learn'
 root "homes#index"
 match "courses/abouts/about" , :to=> "abouts#about", :via=>:get 
 match "courses/courses/index" , :to=> "courses#index", :via=>:get 


 
#  match "/path_name", to: "controller_name#method_name", via=> :post or :get 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
