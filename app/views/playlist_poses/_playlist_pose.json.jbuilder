# frozen_string_literal: true

json.extract! playlist_pose, :id, :sequence_number, :playlist_id, :pose_id, :created_at, :updated_at
json.url playlist_pose_url(playlist_pose, format: :json)
