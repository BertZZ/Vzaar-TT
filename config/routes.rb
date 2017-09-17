Rails.application.routes.draw do
  get 'home/index'

  root 'home#index'
<<<<<<< e20508766b68eac65d3511e99df2da994a8e1309
  resources :users
=======
  resources :users do
    member do
      get :confirm_email
    end
  end
>>>>>>> Adds email functionality

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
end
