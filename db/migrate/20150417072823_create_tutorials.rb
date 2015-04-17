class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.string :category
      t.integer :active

      t.timestamps null: false
    end
    add_index :tutorials, :category, unique: true
  end
end
