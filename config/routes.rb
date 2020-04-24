Rails.application.routes.draw do
  resources :favorites, only: [:index, :create, :destroy]
  resources :park_tags, only: [:index, :create, :destroy]
  resources :tags, only: [:index, :create, :destroy]
  resources :reviews, only: [:index, :create, :update, :destroy]
  resources :users
  post"/login",to: "users#login" 
  resources :parks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
