Rails.application.routes.draw do
  get 'home/index'

  root 'home#index'
  resources :users

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
end
