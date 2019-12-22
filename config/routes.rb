Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'customers#index'
  resources :numbers
  resources :customers
  resources :cities
  resources :calls
  resources :plans
end
