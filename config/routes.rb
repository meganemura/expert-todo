Rails.application.routes.draw do
  resources :tasks, only: %i(index edit update create destroy)
  root 'top_pages#index'
  get '/home', to: 'top_pages#index'
  get '/me', to: 'users#show'

  get '/login', to: 'sessions#create'
  get '/register', to: 'users#new'
  post '/register', to: 'users#create'

  # XXX: for debug use
  get '/authentications', to: 'authentication_tokens#index'
end
