# frozen_string_literal: true

Rails.application.routes.draw do
  root 'playlists#index'
  resources :playlist_poses
  resources :playlists
  resources :poses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
