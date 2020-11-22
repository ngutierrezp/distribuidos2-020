# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users, only: %I[new create]
end
