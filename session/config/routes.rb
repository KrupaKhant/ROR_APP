Rails.application.routes.draw do
  delete 'logout', to: 'sessions#destroy'
  resources :users, :sessions
  resources :products do
    collection do 
      get "add_to_cart/:id", to: "products#add_to_cart",as: "add_to_cart"
      get :show_cart
      get "delete_from_cart/:id", to: "products#delete_from_cart",as: "delete_from_cart"
    end
  end

  root to: 'products#index'
end
