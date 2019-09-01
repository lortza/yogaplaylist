class CreatePlaylistPoses < ActiveRecord::Migration[6.0]
  def change
    create_table :playlist_poses do |t|
      t.integer :sequence_number
      t.references :playlist, null: false, foreign_key: true
      t.references :pose, null: false, foreign_key: true

      t.timestamps
    end
  end
end
