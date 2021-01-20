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
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
