Rails.application.routes.draw do
  get '/services', to: 'services#index'
  get '/services/:id', to: 'services#show'
  resources :rooms, only: [:index, :show, :update]
  resources :bookings
end
