# frozen_string_literal: true

Rails.application.routes.draw do
  resources :groups, only: [:index, :new, :create]
  resources :items, only: [:new, :create]
  resources :users, only: [:new, :create]
  root 'groups#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy', as: 'logout'
  get 'users/:id/my_items', to: 'users#my_items', as: 'my_items'
  get 'users/:id/my_external_items', to: 'users#my_external_items', as: 'my_external_items'

  get 'groups/:id/group_items', to: 'groups#group_items', as: 'group_items'
end
