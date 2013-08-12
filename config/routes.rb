Rails3BootstrapDeviseCancan::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => 'static#index'
  devise_for :users

  resources :users do
    resources :conferences
  end
  ActiveAdmin.routes(self)
end
