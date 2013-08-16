Rails3BootstrapDeviseCancan::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => 'static#index'
  devise_for :users

  resources :users do
    resources :conferences
    resources :informations
  end
  ActiveAdmin.routes(self)
end
