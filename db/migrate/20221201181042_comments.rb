class Comments < ActiveRecord::Migration[7.0]
  def up
    drop_table :comments
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
