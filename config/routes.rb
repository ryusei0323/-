Rails.application.routes.draw do
##ここに移動
  devise_for :users

  resources :users,only: [:show,:index,:edit,:update]
  resources :books, only: [:show, :index, :create, :destroy, :edit, :update] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
#  <!-- devise_for :users移動 -->
  root 'home#top'
  get 'home/about'
end