class Pose < ApplicationRecord
  has_many :playlist_poses
  has_many :playlists, through: :playlist_poses
end
