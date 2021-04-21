Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root 'homes#top'
  resources :posts do
    resources :post_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
end
