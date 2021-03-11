Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root 'homes#top'
  resources :posts
  resources :users, only: [:show, :edit, :update]
end
