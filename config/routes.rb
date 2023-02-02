# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'main#index'

  resources :products, only: [:show]
  resources :category, only: [:show]
  resource :cart, only: %i[show destroy] do
    resources :items, only: %i[show destroy]
  end
  get 'search', to: 'search#index'
end
