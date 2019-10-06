# frozen_string_literal: true

module PosesHelper
  def form_poses(user)
    user.admin? ? Pose.by_name : Pose.public_poses.by_name
  end
end
