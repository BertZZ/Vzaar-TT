Rails.application.routes.draw do
  get 'home/index'

  root 'home#index'
<<<<<<< HEAD
<<<<<<< e20508766b68eac65d3511e99df2da994a8e1309
  resources :users
=======
=======
>>>>>>> da89b54f23186b953847ac9b90eedbeed806770b
  resources :users do
    member do
      get :confirm_email
    end
  end
<<<<<<< HEAD
>>>>>>> Adds email functionality
=======
>>>>>>> da89b54f23186b953847ac9b90eedbeed806770b

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
end
