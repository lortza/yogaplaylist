class AddUserToPoses < ActiveRecord::Migration[6.0]
  def change
    add_reference :poses, :user, foreign_key: true
  end
end
