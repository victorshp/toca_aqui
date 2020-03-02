Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :profile, only: :index

  resources :instruments

  resources :users, only: [ :show ] do
    resources :instruments, only: [ :index ]
  end

  resources :orders, only: [ :new, :create, :edit, :update, :destroy]

end
