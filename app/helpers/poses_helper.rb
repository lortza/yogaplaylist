# frozen_string_literal: true

module PosesHelper
  def form_poses(user)
    user.admin? ? Pose.by_name : Pose.public_poses.by_name
  end

  def display_pose_image(pose)
    # file = Rails.application.assets.find_asset(pose.image_file) ? pose.image_file : 'placeholder.png'
    # image_tag file
    image_tag pose.image_file
  rescue StandardError
    image_tag 'image_missing.png'
  end
end
