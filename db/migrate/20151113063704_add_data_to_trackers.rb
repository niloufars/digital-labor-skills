class AddDataToTrackers < ActiveRecord::Migration
  def change
    add_column :trackers, :data, :string
  end
end
