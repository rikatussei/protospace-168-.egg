Rails.application.routes.draw do
  devise_for :users
  root to: 'prototypes#index'
  resources :prototypes
  resources :users, only: [:index, :new, :edit, :update]
  # resources :tweets, only: [:index, :new]
end
