Rails.application.routes.draw do

  match "todos/:id/destroy", :to => "todos#destroy", :via => :get, :as => "delete_todo"

  resources :todos
  root 'todos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end