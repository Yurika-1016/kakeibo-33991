Rails.application.routes.draw do
  get 'posts/index'
  devise_for :users
  get 'welcomes/index'
  root to: "welcomes#index"
  resources :spendings, only:[:new, :create]
  resources :incomes, only:[:new, :create]
  resources :posts, only:[:index]
end
