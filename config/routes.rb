Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

  root to: 'places#index'

  resources :users do
    resources :profiles
  end

  resources :map, only: [:index]


  resources :places

  resources :location_managers

end
