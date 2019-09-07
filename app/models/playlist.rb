# frozen_string_literal: true

class Playlist < ApplicationRecord
  has_many :playlist_poses, dependent: :destroy
  has_many :poses, through: :playlist_poses

  accepts_nested_attributes_for :playlist_poses,
                                reject_if: :all_blank, # at least 1 ingredient should be present
                                allow_destroy: true # allows user to delete ingredient via checkbox

  validates :name,
            presence: true

  validates :hold_time,
            presence: true,
            numericality: { greater_than: 0 }

  def tracks_for_js
    playlist_poses.order(:sequence_number).map(&:audio_file).to_json.html_safe # rubocop:disable Rails/OutputSafety
  end
end
