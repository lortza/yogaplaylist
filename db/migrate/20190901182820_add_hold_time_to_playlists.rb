# frozen_string_literal: true

class AddHoldTimeToPlaylists < ActiveRecord::Migration[6.0]
  def change
    add_column :playlists, :hold_time, :integer
  end
end
