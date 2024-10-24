Rails.application.routes.draw do
  root 'prototypes#index'

  get 'prototypes', to: 'prototypes#index'
end