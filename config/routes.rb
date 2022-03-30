Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
resources :users do
 resources :recipes  do
 resources :foods  do
 resources :inventories
 end
 end
end
 get 'home', to: 'static#home'


  # Defines the root path route ("/")

   root "static#home"
end
