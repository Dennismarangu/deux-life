Rails.application.routes.draw do

  get '/services', to: 'services#index'
  get '/services/:id', to: 'services#show'
end
