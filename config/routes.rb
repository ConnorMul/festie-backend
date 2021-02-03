Rails.application.routes.draw do
  resources :favorites
  resources :reviews
  resources :festivals
  resources :users
  
  get '/login', to: 'auth#login'
  post 'reviews/new', to: 'reviews#create'
  post 'favorites/new', to: 'favorites#create'
end
