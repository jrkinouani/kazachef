Rails.application.routes.draw do
  devise_for :users
  resources :plats  do
    resources :comments
  end
  root "plats#index"
end
