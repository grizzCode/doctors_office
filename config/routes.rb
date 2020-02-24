Rails.application.routes.draw do
  root 'appointments#index'

    resources :patients
    resources :doctors do
      resources :appointments 
    end
end
