class AddUsersIdToTutorialLinks < ActiveRecord::Migration
  def change
    add_column :tutorial_links, :user_id, :integer
  end
end
