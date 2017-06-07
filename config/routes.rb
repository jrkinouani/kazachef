Rails.application.routes.draw do
  devise_for :users
  resources :plats  do
    resources :comments
  end
  root "plats#index"
  get "/comment" => "static_pages#comment"
  get "/apropos" => "static_pages#apropos"
  get "/chef" => "static_pages#chef"
  get "/hygiene" => "static_pages#hygiene"
end
