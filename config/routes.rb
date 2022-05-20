Rails.application.routes.draw do
  devise_for :users
  resources :users
  root to: 'events#index'

  resources :events
  resources :users, only: %i[show edit update]
end
