# frozen_string_literal: true

FactoryBot.define do
  factory :pose do
    user_id { create(:user).id }
    sequence(:name) { |n| "pose#{n}" }
    sequence(:audio_file) { |n| "pose#{n}.wav" }
    sequence(:image_file) { |n| "pose#{n}.png" }
    admin_only { false }
  end
end
