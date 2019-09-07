# frozen_string_literal: true

FactoryBot.define do
  factory :playlist do
    sequence(:name) { |n| "pose#{n}" }
    hold_time { rand(5..10) }
  end

  # WIP
  # trait :with_3_poses do
  #   after :create do |playlist|
  #     create_list :playlist_pose, 3, pose: pose # has_many
  #   end
  # end
end
