class RemoveActiveFromTutorial < ActiveRecord::Migration
  def change
    remove_column :tutorials, :active, :integer
  end
end
