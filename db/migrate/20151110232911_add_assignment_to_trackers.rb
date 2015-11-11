class AddAssignmentToTrackers < ActiveRecord::Migration
  def change
    add_column :trackers, :assignmentID, :string
  end
end
