Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'registrations' }
  get 'about', to: 'pages#show', as: :about

  resources :posts, except: [:edit, :update]

  root 'pages#index'
end
