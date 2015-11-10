class RemoveFieldsFromTrackers < ActiveRecord::Migration
  def change
    remove_column :trackers, :string, :string
    remove_column :trackers, :integer, :string
  end
end
