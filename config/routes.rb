Rails.application.routes.draw do

  get 'about', to: 'pages#show', as: :about

  root 'pages#index'
end
