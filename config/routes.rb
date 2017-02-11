Rails.application.routes.draw do

  root to: 'sessions#new'

  resources :users
  resources :sessions, only: :create

  get "signup" => "users#new", as: "signup"
  get "login" => "sessions#new", as: "login"
  get "logout" => "sessions#destroy", as: "logout"

end
