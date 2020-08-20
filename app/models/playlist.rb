# frozen_string_literal: true

class Playlist < ApplicationRecord
  SPEAK_TIME_BUFFER_SECONDS = 2
  PLAYLIST_COMPLETE_AUDIO_FILE = 'chime.wav'

  belongs_to :user
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

  def duration_in_minutes
    duration_in_seconds / 60
  end

  def duration_in_seconds
    qty = poses.count
    time_per_track = hold_time + speak_time_buffer
    time_per_track * qty
  end

  def speak_time_buffer
    SPEAK_TIME_BUFFER_SECONDS
  end

  def tracks_for_js
    tracks = playlist_poses.order(:sequence_number).map do |pose|
      { id: pose.id, audio_file: pose.audio_file }
    end
    tracks << { id: 0, audio_file: PLAYLIST_COMPLETE_AUDIO_FILE }
    tracks.to_json.html_safe # rubocop:disable Rails/OutputSafety
  end
end
