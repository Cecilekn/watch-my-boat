Rails.application.routes.draw do
  # devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :boats, only: [:new, :create, :show]

  resources :packages, only: [:index, :show] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:show, :update]

  namespace :manager do
    resource :dashboard, only: [:show]
  end

  resource :dashboard, only: [:show]

  resource :subscriptions, only: [:new, :create]

  devise_for :users, :controllers => {:registrations => "registrations"}
end
