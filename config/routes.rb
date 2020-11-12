Rails.application.routes.draw do
  
  get '/', to: 'application#home', as: "home"
  get '/about', to: 'application#about'
  get '/login', to: 'logins#new', as: 'login'
  post '/login', to: 'logins#create', as: 'logged_in'
  get '/signup', to: 'users#new', as: 'new_user'
  post '/signup', to: 'users#create'
  get '/logout', to: 'logins#destroy', as: 'logout'
  delete '/logout', to: 'logins#destroy', as: 'loggedout'
  
  resources :courses
  resources :cheese_recipes
  resources :instructors
  resources :cheeses
  resources :users
  resources :users_course
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  







end
