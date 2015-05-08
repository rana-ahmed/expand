class CreateTutorialLinks < ActiveRecord::Migration
  def change
    create_table :tutorial_links do |t|
      t.string :title
      t.string :link

      t.timestamps null: false
    end
  end
end
