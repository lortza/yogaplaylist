# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@test.com" }
    password { 'password' }
    password_confirmation { 'password' }
    admin { false }
  end

  # WIP
  # trait :with_3_poses do
  #   after :create do |playlist|
  #     create_list :playlist_pose, 3, pose: pose # has_many
  #   end
  # end
end
