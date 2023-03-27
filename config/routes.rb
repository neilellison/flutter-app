Rails.application.routes.draw do
  resources :users
  resources :likes
  resources :relationships
  resources :tweets
end
