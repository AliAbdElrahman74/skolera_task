Rails.application.routes.draw do
  get 'settings/index'

  root 'settings#index'

  resources 'phone_numbers'
end
