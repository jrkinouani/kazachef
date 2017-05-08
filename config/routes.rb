Rails.application.routes.draw do
  devise_for :users
  resources :plats
  root "plats#index"
end
