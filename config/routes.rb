Rails.application.routes.draw do
  resources :groups
  resources :items
  resources :users
  root 'users#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy', as: 'logout'
end
