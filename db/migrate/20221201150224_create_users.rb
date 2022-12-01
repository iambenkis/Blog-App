class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :photo
      t.string :bio
      t.datetime :create_at
      t.datetime :update_at
      t.integer :posts_counter

      t.timestamps
    end
  end
end
