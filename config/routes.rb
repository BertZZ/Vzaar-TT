Rails.application.routes.draw do
  get 'home/index'

  root 'home#index'

  resources :users do
    member do
      get :confirm_email
    end
  end

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
end
