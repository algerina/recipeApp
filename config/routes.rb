Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
resources :users 
 resources :recipes  do
 resources :recipe_foods
 end
 resources :foods  
 resources :inventories


 get 'home', to: 'static#home'


  # Defines the root path route ("/")

   root "static#home"
end
