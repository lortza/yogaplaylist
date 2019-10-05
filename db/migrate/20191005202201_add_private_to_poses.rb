class AddPrivateToPoses < ActiveRecord::Migration[6.0]
  def change
    add_column :poses, :private, :boolean, default: false
  end
end
