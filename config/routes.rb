# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'pages#home'

  resources :jobs
  resources :profiles
  resources :job_categories
  resources :articles do
    member do
      get :discard
      get :restore
    end
  end
end
