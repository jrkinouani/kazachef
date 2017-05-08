Rails.application.routes.draw do
  resources :plats
  root "plats#index"
end
