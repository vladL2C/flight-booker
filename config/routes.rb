Rails.application.routes.draw do
  root 'flights#index'
  resources :flights, only: [:index]
  get 'booking', to: 'bookings#new'
  post 'booking', to: 'bookings#create'
  resources :bookings, only: [:new, :show]
end
