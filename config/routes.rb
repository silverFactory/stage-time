Rails.application.routes.draw do
  resources :open_mics do
      resources :supports
      resources :instruments
      resources :updates
  end


  resources :comments
  resources :users
  root 'sessions#index'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
  get '/open_mics/:open_mic_id/missed_connections/new' => 'supports#new_missed_connection'
  get '/open_mics/:open_mic_id/lend_a_hands/new' => 'supports#new_lend_a_hand'
  match '/auth/facebook/callback' => 'sessions#create', via: [:get, :post]
  # get 'auth/facebook', as: 'facebook_login' 
end
