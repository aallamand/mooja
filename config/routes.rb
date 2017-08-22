Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  resources :surfcamps, only: [:index, :show] do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:show]
end
