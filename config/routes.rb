Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 resources :recipes 
 resources :foods 

  # Defines the root path route ("/")

   root "recipes#index"
end
