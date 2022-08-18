# frozen_string_literal: true

Rails.application.routes.draw do
  resources :blogs
  resources :aces
  get 'mingle/index'
  get 'courses/index'
  get 'home/index'
  get 'courses/content'
  root 'home#index'
  get 'home/signup'
  get 'savedblogs', to: 'blogs#savedblogs'
  get '/saveblog/:blog_id', to: 'blogs#save_blogs'
  get 'search', to: 'home#search'
  delete 'deleteSavedBlog/:id', to: 'blogs#removeSavedBlog'
  devise_for :users, controllers: {
    registrations: 'registrations/registrations'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
