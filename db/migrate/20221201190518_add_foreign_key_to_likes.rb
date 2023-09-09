class AddForeignKeyToLikes < ActiveRecord::Migration[7.0]
  def change
    add_reference :likes, :posts, null: false, index: true, foreign_key: true
  end
end