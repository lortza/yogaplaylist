# frozen_string_literal: true

class Pose < ApplicationRecord
  belongs_to :user
  has_many :playlist_poses, dependent: :destroy
  has_many :playlists, through: :playlist_poses

  validates :name,
            :audio_file,
            :image_file,
            presence: true

  scope :by_name, -> { order(name: 'ASC') }
  scope :public_poses, -> { where(admin_only: false) }
end
