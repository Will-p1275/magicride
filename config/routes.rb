Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :rides do
    resources :bookings, only: [:new, :create]
  end
  # ressources :pages, only: [:dasboard]
  get '/dashboard', to: 'pages#dashboard'
end
