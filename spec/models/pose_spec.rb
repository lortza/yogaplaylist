# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Pose, type: :model do
  context 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:playlist_poses) }
    it { should have_many(:playlists).through(:playlist_poses) }
  end

  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:audio_file) }
    it { should validate_presence_of(:image_file) }
  end

  describe 'self.by_name' do
    it 'orders poses alphabetically by name' do
      pose_z = create(:pose, name: 'Z')
      pose_a = create(:pose, name: 'A')

      expect(Pose.by_name.first).to eq(pose_a)
      expect(Pose.by_name.last).to eq(pose_z)
    end
  end

  describe 'self.public_poses' do
    it 'returns only poses that are not marked as admin_only' do
      private_pose = create(:pose, admin_only: true)
      public_pose = create(:pose, admin_only: false)

      expect(Pose.public_poses).to include(public_pose)
      expect(Pose.public_poses).to_not include(private_pose)
    end
  end
end
