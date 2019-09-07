# frozen_string_literal: true

class PlaylistPose < ApplicationRecord
  belongs_to :playlist
  belongs_to :pose

  delegate :audio_file, to: :pose
end
