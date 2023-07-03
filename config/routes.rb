Rails.application.routes.draw do
  resources :rooms, only: [:index, :show, :update]
end
