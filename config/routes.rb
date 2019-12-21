Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'registrations' }

  authenticated :user do
    root to: 'posts#index', as: :authenticated_root
  end

  get 'about', to: 'pages#show', as: :about

  resources :posts, except: [:edit, :update] do
    resources :comments, except: [:edit, :update]
  end

  root 'pages#index'
end
