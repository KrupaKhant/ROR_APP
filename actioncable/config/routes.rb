Rails.application.routes.draw do
  devise_for :users

  root to: 'feedbacks#new'

  resources :feedbacks, only: [:new, :create]

  namespace :admin do
    resources :feedbacks, only: [:index, :show, :update] do
      post 'reply', on: :member
    end
  end
end
