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
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
