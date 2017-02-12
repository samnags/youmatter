Rails.application.routes.draw do

  resources :user_accomplishments, path: "/accomplishments"
  root to: 'sessions#new'

  resources :users
  resources :sessions, only: [:create]

  get "signup" => "users#new", as: "signup"
  get "login" => "sessions#new", as: "login"
  get "logout" => "sessions#destroy", as: "logout"

end
