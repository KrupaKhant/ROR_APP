Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1 do
      post 'login', to: 'auth#login'
      resources :users
      resources :posts, only: [:index, :show, :create] do
        resources :comments, only: [:index, :create]
      end
    end
  end
  
end
