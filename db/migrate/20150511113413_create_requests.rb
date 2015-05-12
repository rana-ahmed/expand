class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :category
      t.string :link
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
