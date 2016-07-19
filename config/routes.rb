Rails.application.routes.draw do

  devise_for :users

  root to: 'places#index'

  resources :user do
    resources :profile
  end

  resources :places

end
