Rails.application.routes.draw do
  devise_for :users
  root to: 'prototypes#index'

  resources :prototypes, only: [:index, :new, :create]
  # get 'prototypes', to: 'prototypes#index'
end