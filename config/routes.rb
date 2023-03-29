Rails.application.routes.draw do
  root "tweets#index"
  resources :users, only: [:index, :show]
  resources :tweets, only: [:new, :create, :show, :index]
  get "/signup" => "users#new"
  post "/users" => "users#create"
  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create', as: 'sessions'
  get "/logout" => "sessions#destroy"
end
