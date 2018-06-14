Rails.application.routes.draw do
  resources :phone_calls
  resources :agents
  resources :phone_numbers

  root 'phone_numbers#index'
end
