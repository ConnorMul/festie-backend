Rails.application.routes.draw do
  resources :posts
  resources :favorites
  resources :reviews
  resources :festivals
  resources :users
  
  get '/auto_login', to: 'auth#auto_login'
  # get "/user_is_authed", to: "auth#user_is_authed"
  get 'login', to: 'auth#login'
  post 'reviews/new', to: 'reviews#create'
  post 'favorites/new', to: 'favorites#create'
  patch 'reviews/:id', to: 'reviews#update'
  delete 'favorites/:id', to: 'favorites#destroy'
end
