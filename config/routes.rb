Rails.application.routes.draw do
  root 'pages#welcome'
  get 'pages/welcome'

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create, :show, :destroy ]
    resources :restaurants, only: [:index, :show ]
    resources :reviews, only: [:create, :index, :show, :destroy ]
    resources :followers, only: [:create, :index, :show, :destroy]
    resource :session, only: [:create, :destroy, :show]

  end
end
