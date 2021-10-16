Rails.application.routes.draw do
  resources :tags
  resources :photos
  devise_for :users
  root "articles#index"

  get "/articles", to: "articles#index"
  # root controller: :rooms, action: :index
end
