class CreateLanguages < ActiveRecord::Migration[7.1]
  def change
    create_table :languages do |t|
      t.string :code
      t.string :name

      t.timestamps
      t.timestamp :deleted_at
    end

    add_index :languages, :deleted_at
    add_index :languages, :code, unique: true
  end
end
