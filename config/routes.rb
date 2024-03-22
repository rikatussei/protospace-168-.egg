Rails.application.routes.draw do
  devise_for :users
  root to: 'prototypes#index'
  resources :users, only: [:edit, :update]
  # resources :tweets, only: [:index, :new]
end
