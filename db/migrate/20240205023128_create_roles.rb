class CreateRoles < ActiveRecord::Migration[7.1]
  def change
    create_table :roles do |t|
      t.string :code
      t.string :name

      t.timestamps
      t.timestamp :deleted_at
    end

    add_index :roles, :deleted_at
    add_index :roles, :code, unique: true
  end
end
