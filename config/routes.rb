Rails.application.routes.draw do
  root 'tutorials#index'

  resources :tutorials
end
