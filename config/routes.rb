Rails.application.routes.draw do

  resources :users, only: [:show, :edit, :update]

  resources :bookings, only: [:new, :create]

  resources :sitters, only: [:index, :new]

  # get 'sitters/index'

  # get 'users/show'

  # get 'users/edit'

  # get 'users/update'


  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'},
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }


  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
