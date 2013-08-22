Rails3BootstrapDeviseCancan::Application.routes.draw do
  match '/calendar(/:year(/:month))' => 'calendar#index', :as => :calendar, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}

  devise_for :admin_users, ActiveAdmin::Devise.config
  root :to => 'static#index'
  devise_for :users

  resources :users do
    resources :conferences
    resources :informations
  end
  ActiveAdmin.routes(self)
end
