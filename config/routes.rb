Rails.application.routes.draw do
  resources :open_mics
  resources :instruments
  resources :updates
  resources :supports
  resources :comments
  resources :missed_connections
  resources :users
  root 'sessions#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
