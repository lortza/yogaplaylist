# frozen_string_literal: true

FactoryBot.define do
  factory :pose do
    sequence(:name) { |n| "pose#{n}" }
    sequence(:audio_file) { |n| "pose#{n}.wav" }
    sequence(:image_file) { |n| "pose#{n}.png" }
  end
end
