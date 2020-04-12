Rails.application.routes.draw do
  resources :favorites
  resources :park_tags
  resources :tags
  resources :reviews
  resources :users
  post"/login",to: "users#login" 
  resources :parks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
