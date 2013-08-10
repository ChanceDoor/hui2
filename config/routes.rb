Rails3BootstrapDeviseCancan::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  authenticated :user do
    root :to => 'users#show'
  end
  devise_for :users

  resources :users do
    resources :conferences
  end
end
