# frozen_string_literal: true

Rails.application.routes.draw do
  resources :projects do
    resources :tasks
  end

  devise_for :users
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'projects#index'
end
