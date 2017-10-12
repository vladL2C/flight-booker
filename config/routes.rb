Rails.application.routes.draw do
  root 'flights#index'
  resources :flights, only: [:index]
  get 'bookings', to: 'bookings#new'
  post 'bookings', to: 'bookings#create'
  resources :bookings, only: [:show]
end
