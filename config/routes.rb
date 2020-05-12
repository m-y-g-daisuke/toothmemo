Rails.application.routes.draw do
  devise_for :users
  resources :users,   only: [:edit, :update]
  root "animals#index"
  resources :animals do
    resources :posts
    resources :search, only: :index
  end
  
end