Rails.application.routes.draw do
  root 'top_pages#index'

  get '/login', to: 'sessions#create'
end
