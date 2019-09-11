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
end
