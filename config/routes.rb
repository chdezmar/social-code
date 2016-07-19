Rails.application.routes.draw do

  devise_for :users

  root to: 'profile#index'

  resources :user do
    resources :profile
  end

end
