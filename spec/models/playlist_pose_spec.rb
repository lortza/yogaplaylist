# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PlaylistPose, type: :model do
  context 'associations' do
    it { should belong_to(:playlist) }
    it { should belong_to(:pose) }
  end

  context 'validations' do
    it 'validate_uniqueness_of sequence_number, scoped to playlist' do
      playlist = create(:playlist)
      pose = create(:pose)
      playlist.poses << pose

      should validate_uniqueness_of(:sequence_number).scoped_to(:playlist_id)
    end
  end
end
