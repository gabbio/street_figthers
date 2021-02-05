# frozen_string_literal: true
Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'pages#index'

  get '/accueil' => 'pages#index'
  get '/dojo' => 'pages#index'
  get '/fabrique' => 'pages#index'
end
