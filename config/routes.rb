Rails.application.routes.draw do
  get 'settings/index'

  root 'settings#index'
end
