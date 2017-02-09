Rails.application.routes.draw do

  root to: 'home#index'

  get "signup" => "users#new", as: "signup"
  get "login" => "sessions#new", as: "login"
  get "logout" => "sessions#destroy", as: "logout"

end
