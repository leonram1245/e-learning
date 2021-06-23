Rails.application.routes.draw do
  get 'users/index'
  devise_for :users, controllers:{
    confirmations: 'confirmations'
  }
  resources :users
  resources :courses
  root 'home#index'
  get 'landing_page/index'
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
