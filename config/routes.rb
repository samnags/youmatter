Rails.application.routes.draw do

  devise_for :users, controllers: {
      sessions: 'users/sessions',
      # password: 'users/passwords',
      # registration: 'users/registrations',
      # confirmation: 'users/confirmations'
  }

  root to: "home#index"

end
