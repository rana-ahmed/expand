Rails.application.routes.draw do
  #add root path
  root 'tutorials#index'
  #google auth handel
  get 'auth/google_oauth2/callback', to: 'sessions#create'
  post 'user/signout', to: 'sessions#destroy', as: 'signout'
  get 'auth/failure', to: redirect('/')
  #link like handle
  post 'like/:id', to: 'tutorials#like', as: 'like'
  #for tutorials
  resources :tutorials, only: [:index, :show, :new, :create]
  #for request
  resources :requests, except: [:edit, :update, :show]

  #came from requests#index new link add form and save
  get 'tutorial_links/accept/:id', to: 'tutorial_links#accept', as: 'accept_tutorial_link'
  resources :tutorial_links, only: [:create, :new]
end
