Rails.application.routes.draw do
  resources :users
  resources :likes
  resources :relationships
  resources :tweets, only: [:new, :create, :show, :index]
  resources :sessions
end
