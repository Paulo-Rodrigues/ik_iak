Rails.application.routes.draw do

  devise_for :users
  get 'about', to: 'pages#show', as: :about

  root 'pages#index'
end
