Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
resources :users do
 resources :recipes  do
 resources :recipe_foods
 resources :foods  do
 resources :inventories
 end
 end
end
 get 'home', to: 'static#home'


  # Defines the root path route ("/")

   root "static#home"
end
