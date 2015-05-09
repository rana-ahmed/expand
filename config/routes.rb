Rails.application.routes.draw do
  root 'tutorials#index'
  get 'auth/google_oauth2/callback', to: 'sessions#create'
  post 'user/signout', to: 'sessions#destroy', as: 'signout'
  get 'auth/failure', to: redirect('/')
  post 'like/:id', to: 'tutorials#like', as: 'like'
  resources :tutorials, only: [:index, :show]
end
