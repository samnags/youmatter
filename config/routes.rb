Rails.application.routes.draw do

  resources :user_electeds
  resources :electeds
  resources :user_accomplishments, path: "/accomplishments"
  # resources :user_electeds, path: "/electeds"

  root to: 'pages#home'

  resources :users
  resources :sessions, only: [:create]

  get "signup" => "users#new", as: "signup"
  get "login" => "sessions#new", as: "login"
  get "logout" => "sessions#destroy", as: "logout"
  get "new_elected" => "user_electeds#new"

end
