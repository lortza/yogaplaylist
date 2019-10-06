# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PosesHelper, type: :helper do
  describe 'form_poses' do
    let(:private_pose) { create(:pose, admin_only: true) }
    let(:public_pose) { create(:pose, admin_only: false) }

    it 'returns publically accessbile poses for non-admin users' do
      user = create(:user, admin: false)
      expect(form_poses(user)).to include(public_pose)
      expect(form_poses(user)).to_not include(private_pose)
    end

    it 'returns all poses for admin users' do
      user = create(:user, admin: true)
      expect(form_poses(user)).to include(public_pose)
      expect(form_poses(user)).to include(private_pose)
    end
  end
end
