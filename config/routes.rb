Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  ressources :rides do
    resources :bookings, only: [:new, :create]
  end
  # ressources :pages, only: [:dasboard]
end
