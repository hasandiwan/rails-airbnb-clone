Rails.application.routes.draw do
  get 'bookings/new'

  get 'bookings/create'

  get 'sitters/index'

  get 'users/show'

  get 'users/edit'

  get 'users/update'


  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
