Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'photos/display'
  root "admin/users#index"
  namespace :admin do
    resources :users
  end
  resources "photos"
  get '/photo(/:id)', to: 'photos#show'
  
end
