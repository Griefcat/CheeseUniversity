Rails.application.routes.draw do
  get '/', to: 'application#home', as: "home"
  get '/about', to: 'application#about'
  get '/login', to: 'logins#new', as: "login"
  get '/signup', to: 'users#new', as: "new_user"
  post '/signup', to: 'users#create'
  
  resources :courses
  resources :cheese_recipes
  resources :instructors
  resources :cheeses
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  







end
