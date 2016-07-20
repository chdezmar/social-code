Rails.application.routes.draw do

  devise_for :users

  root to: 'places#index'

  resources :users do
    resources :profiles
  end

  resources :places

  resources :location_managers

end
