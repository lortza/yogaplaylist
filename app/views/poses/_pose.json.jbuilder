# frozen_string_literal: true

json.extract! pose, :id, :name, :audio_file, :image_file, :created_at, :updated_at
json.url pose_url(pose, format: :json)
