Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :rides do
    resources :bookings, only: [:new, :create, :show]
  end

  patch '/bookings/:id/accept', to: 'bookings#accept', as: 'accept'
  patch '/bookings/:id/refuse', to: 'bookings#refuse', as: 'refuse'

  get '/dashboard', to: 'pages#dashboard'
end

# member booking accepted refuse balab
