# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :clients, only: [:index, :create, :destroy]
    end
  end

  get '/', to: redirect('/api/v1/clients')
end
