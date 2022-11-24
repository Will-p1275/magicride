Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :rides do
    resources :bookings, only: [:new, :create, :update, :edit, :show]
  end
  get '/dashboard', to: 'pages#dashboard'
end
