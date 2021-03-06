# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'associations' do
    it { should have_many(:playlists) }
    it { should have_many(:poses) }
  end
end
