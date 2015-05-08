class AddTutorialsIdToTutorialLinks < ActiveRecord::Migration
  def change
    add_column :tutorial_links, :tutorial_id, :integer
  end
end
