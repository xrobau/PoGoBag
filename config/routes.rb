Rails.application.routes.draw do
  #resources :bag, as: ""
  # Logging routes
  post '/bag/login', to: 'sessions#create', as: "login"
  delete '/bag/logout', to: 'sessions#destroy'
  get '/bag/logout', to: 'sessions#destroy', as: "logout"

  # Global content
  get '/bag/home', to: 'static_pages#home', as: "home"
  get '/bag/about', to: 'static_pages#about', as: "about"
  get '/bag/stats', to: 'stats#show', as: "stats"
  get '/bag/stats/:stat', to: 'stats#show', as: "stats_show"

  # User content
  get '/bag/search', to: 'users#index'
  get '/bag/:id', to: 'users#show'
  get '/bag/:id/:stat', to: 'users#show'

  get '/bag', to: 'static_pages#home'
  get '/bag/', to: 'static_pages#home'

  root 'static_pages#home'
end
