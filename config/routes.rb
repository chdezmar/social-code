Rails.application.routes.draw do

  devise_for :users

  root 'profiles#index'

  resources :users do
    resources :profiles
  end



end
