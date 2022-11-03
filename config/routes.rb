# frozen_string_literal: true

Rails.application.routes.draw do
  get 'signin/create'
  namespace :api do
    namespace :v1 do
      resources :clients, only: %i[index create]
      resources :users
    end
  end

  root to: "home#index"

  post "refresh", controller: :refresh, action: :create
  post "signin", controller: :signin, action: :create
  post "signup", controller: :signup, action: :create
  delete "signin", controller: :signin, action: :destroy
end
