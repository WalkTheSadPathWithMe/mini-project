Rails.application.routes.draw do
  root 'welcome#index'

  resources :users, only: [:new, :create, :show]
  resources :profiles, only: [:index]
  resources :vendor_profiles, only: [:new, :create, :show, :index]
  resources :customer_profiles, only: [:new, :create, :show, :index]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
