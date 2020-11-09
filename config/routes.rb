Rails.application.routes.draw do
  get '/', to: 'application#home'
  get '/about', to: 'application#about'
  
  resources :courses
  resources :cheese_recipes
  resources :instructors
  resources :cheeses
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  







end
