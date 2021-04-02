Rails.application.routes.draw do
  devise_for :users
  get 'welcomes/index'
  root to: "welcomes#index"
  resources :spendings, only:[:new, :create]
end
