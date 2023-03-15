Rails.application.routes.draw do

  
  root to: "sessions#login"
  get 'products/search', to: 'products#search'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :products

  resources :users, only: [:new, :create, :update, :edit, :show, :destroy]

  
end
