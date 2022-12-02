class RemoveUsersFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_reference :posts, :users, null: false, foreign_key: true
  end
end
