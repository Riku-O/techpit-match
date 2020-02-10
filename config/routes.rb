Rails.application.routes.draw do
  devise_for :users
  root "top#index"

  resources :users, only: [:show, :index]

  resources :reactions, only: [:create]
end
