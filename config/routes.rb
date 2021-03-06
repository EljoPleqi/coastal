Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  get "/users/:id", to: 'users#show', as: "user_profile"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :boats do
    resources :bookings, only: [ :show, :new, :create ]
  end
  resources :bookings, only: [ :index, :show, :destroy ] do
    resources :reviews, only: [ :create, :destroy ]
    end
end
