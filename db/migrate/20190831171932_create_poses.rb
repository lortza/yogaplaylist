# frozen_string_literal: true

class CreatePoses < ActiveRecord::Migration[6.0]
  def change
    create_table :poses do |t|
      t.string :name
      t.string :audio_file
      t.string :image_file

      t.timestamps
    end
  end
end
