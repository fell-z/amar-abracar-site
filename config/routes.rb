Rails.application.routes.draw do
  root "home#index"

  resources :help_requests, only: [ :new, :create ]
  resources :transfers, only: :index
  resources :documents, only: [ :index, :create ]

  namespace :admin do
    resources :admin_users
    resources :transfers
    resources :help_requests
    resources :documents

    root to: "transfers#index"
  end

  devise_for :admin_users, skip: [ :registrations ]

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end
