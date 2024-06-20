class RemoveUsersFromLikes < ActiveRecord::Migration[7.0]
  def change
    remove_reference :likes, :users, null: false, foreign_key: true
  end
end
