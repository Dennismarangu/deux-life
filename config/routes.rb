Rails.application.routes.draw do
  # protected routes
  post '/bookings', to: 'bookings#create'
  get '/services', to: 'services#index'
  post '/customer_services', to: 'customer_services#create'
  
  # session routes
  get '/login', to: 'sessions#new', as: :login
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: :logout

  
  get '/services/:id', to: 'services#show'
  resources :rooms, only: [:index, :show, :update]
  resources :bookings
  resources :customer_services, except: [:new, :edit]
  resources :customers,except: [:edit, :new, :update, :destroy]
end
