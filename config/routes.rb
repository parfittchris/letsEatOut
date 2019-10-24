Rails.application.routes.draw do
  root 'pages#welcome'
  get 'pages/welcome'

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create, :show, :destroy ]
    resources :restaurants, only: [:index, :show ]
    resource :session, only: [:create, :destroy, :show]
  end
end
