# frozen_string_literal: true

Rails.application.routes.draw do
  root 'playlists#index'
  devise_for :users
  # devise_for :users, skip: [:registrations] # this 'skip' prevents people from freating new acconuts
  resources :playlist_poses
  resources :playlists
  resources :poses, only: %i[index new create edit update destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
