class AddUserToPlaylists < ActiveRecord::Migration[6.0]
  def change
    add_reference :playlists, :user, foreign_key: true
  end
end
