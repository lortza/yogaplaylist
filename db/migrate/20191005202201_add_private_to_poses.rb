class AddPrivateToPoses < ActiveRecord::Migration[6.0]
  def change
    add_column :poses, :admin_only, :boolean, default: false
  end
end
