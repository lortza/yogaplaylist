class Playlist < ApplicationRecord
  has_many :playlist_poses
  has_many :poses, through: :playlist_poses

  accepts_nested_attributes_for :playlist_poses,
                                reject_if: :all_blank, # at least 1 ingredient should be present
                                allow_destroy: true # allows user to delete ingredient via checkbox

  def tracks_for_js
    playlist_poses.order(:sequence_number).map { |pl_pose| pl_pose.audio_file }.to_json.html_safe
  end
end
