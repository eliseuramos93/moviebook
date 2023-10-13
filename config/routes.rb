Rails.application.routes.draw do
  resources :movie_genres, only: [:new, :create, :edit, :update, :index, :show]
  resources :movies, only: [:new, :create, :edit, :update, :index, :show] do
    patch :production, on: :member
    patch :released, on: :member
    patch :publish, on: :member
    patch :draft, on: :member
  end
  resources :directors, only: [:new, :create, :edit, :update, :index, :show]

  root to: "home#index"
end
