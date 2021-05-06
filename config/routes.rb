Rails.application.routes.draw do
<<<<<<< HEAD
  resources :photos
=======
>>>>>>> heroku/main
  resources :room_messages
  resources :rooms
  devise_for :users
  root "articles#index"

  get "/articles", to: "articles#index"
  # root controller: :rooms, action: :index
end
