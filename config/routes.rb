Rails.application.routes.draw do
  root 'top_pages#index'
  get '/home', to: 'top_pages#index'
  get '/me', to: 'users#show'

  get '/login', to: 'sessions#create'
  get '/register', to: 'users#new'
  post '/register', to: 'users#create'
end
