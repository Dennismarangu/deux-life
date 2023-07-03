Rails.application.routes.draw do
  resources :customer_services, except: [:new, :edit]

end
