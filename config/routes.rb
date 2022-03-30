Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 resources :recipes 
 resources :foods 

 get 'home', to: 'static#home'


  # Defines the root path route ("/")

   root "static#home"
end
