Rails.application.routes.draw do

  devise_for :users

  root to: 'profiles#index'

  resources :users, only: :index
  resource :profile, only: [:show, :update]


end
