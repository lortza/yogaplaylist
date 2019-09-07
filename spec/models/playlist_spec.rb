# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Playlist, type: :model do
  context 'associations' do
    it { should have_many(:playlist_poses) }
    it { should have_many(:poses).through(:playlist_poses) }
    it { should accept_nested_attributes_for(:playlist_poses).allow_destroy(true) }
  end

  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:hold_time) }
    it { should validate_numericality_of(:hold_time).is_greater_than(0) }
  end
end
