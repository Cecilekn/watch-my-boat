Rails.application.routes.draw do
  # devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :boats, only: [:new, :create, :show]

  resources :packages, only: [:index, :show] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:update, :show]

  namespace :manager do
    resources :boats, only: [:index]
  end

  devise_for :users, :controllers => {:registrations => "registrations"}
end
