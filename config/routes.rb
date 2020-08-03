Rails.application.routes.draw do
##ここに移動
  devise_for :users

  resources :users,only: [:show,:index,:edit,:update]
  resources :books
#  <!-- devise_for :users移動 -->
  root 'home#top'
  get 'home/about'
end