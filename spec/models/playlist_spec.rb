# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Playlist, type: :model do
  context 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:playlist_poses) }
    it { should have_many(:poses).through(:playlist_poses) }
    it { should accept_nested_attributes_for(:playlist_poses).allow_destroy(true) }
  end

  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:hold_time) }
    it { should validate_numericality_of(:hold_time).is_greater_than(0) }
  end

  describe '#duration_in_seconds' do
    it 'returns a second count based on qty of poses and hold time' do
      playlist = create(:playlist, hold_time: 30)
      pose = create(:pose)
      playlist.playlist_poses.create(pose_id: pose.id, sequence_number: 1)
      playlist.playlist_poses.create(pose_id: pose.id, sequence_number: 2)
      allow(playlist).to receive(:speak_time_buffer).and_return(0)

      expect(playlist.duration_in_seconds).to eq(60)
    end

    it 'adds the speak_time_buffer to each pose' do
      playlist = create(:playlist, hold_time: 20)
      pose = create(:pose)
      playlist.playlist_poses.create(pose_id: pose.id, sequence_number: 1)
      playlist.playlist_poses.create(pose_id: pose.id, sequence_number: 2)
      allow(playlist).to receive(:speak_time_buffer).and_return(10)

      expect(playlist.duration_in_seconds).to eq(60)
    end
  end

  describe '#duration_in_minutes' do
    it 'returns a minute count based on duration_in_seconds' do
      playlist = create(:playlist)
      allow(playlist).to receive(:duration_in_seconds).and_return(120)

      expect(playlist.duration_in_minutes).to eq(2)
    end
  end

  describe '#speak_time_buffer' do
    it 'returns the value of SPEAK_TIME_BUFFER_SECONDS' do
      playlist = create(:playlist, hold_time: 10)

      expect(playlist.speak_time_buffer).to eq(Playlist::SPEAK_TIME_BUFFER_SECONDS)
    end
  end
end
