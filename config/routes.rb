Rails.application.routes.draw do
  # devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :boats, only: [:new, :create, :show]

  resources :packages, only: [:index, :show] do
    resources :bookings, only: [:new, :create] do
      resources :tasks, only: [:create, :index]
      resources :payments, only: [:new, :create]
    end
  end

  resources :bookings, only: [:show, :edit, :update] do
    resource :pictures, only: [:new, :create]
  end

  namespace :manager do
    resource :dashboard, only: [:show]
  end

  resource :dashboard, only: [:show]


  devise_for :users, :controllers => {:registrations => "registrations", :sessions => "sessions"}
end
