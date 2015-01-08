Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy] 
  resources :users, only: [:new, :create, :index]
  resources :bands
  resources :albums, only: [:new, :create, :edit, :show, :update, :destroy]
  resources :tracks, only: [:new, :create, :edit, :show, :update, :destroy]

  root to: "users#index"
end
