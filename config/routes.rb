Rails.application.routes.draw do
  devise_for :users
  root to: 'prototypes#index'
  resources :prototypes, only: [:index, :new]
  resources :users, only: [:index, :new, :edit, :update]

end
