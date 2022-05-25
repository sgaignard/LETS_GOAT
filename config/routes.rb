Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :goats
  get "my_goats", to: "goats#my_goats"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
