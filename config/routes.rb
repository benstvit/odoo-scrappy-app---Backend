# frozen_string_literal: true

Rails.application.routes.draw do
  get 'signin/create'
  namespace :api do
    namespace :v1 do
      resources :clients, only: %i[index]
      resources :users
    end
  end

  root to: "home#index"
end
