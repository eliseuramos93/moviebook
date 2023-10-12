Rails.application.routes.draw do
  resources :movie_genres, only: [:new, :create, :edit, :update, :index]
  resources :movies, only: [:new, :create, :edit, :update, :index]
  resources :directors, only: [:new, :create, :edit, :update, :index]

  root_to "home#index"
end
