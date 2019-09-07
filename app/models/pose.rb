# frozen_string_literal: true

class Pose < ApplicationRecord
  has_many :playlist_poses
  has_many :playlists, through: :playlist_poses

  validates :name,
            :audio_file,
            :image_file,
            presence: true
end
