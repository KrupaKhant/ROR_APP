Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1 do
      resources :post
    end
  end

  namespace :api do
    namespace :v2 do
      resources :post
    end
  end

  namespace :api do
    namespace :v3 do
      resources :post
    end
  end

  get '/not_found', to: 'post#not_found'
  get '/unauthorized', to: 'post#unauthorized'
  get '/server_error', to: 'post#server_error'
end
