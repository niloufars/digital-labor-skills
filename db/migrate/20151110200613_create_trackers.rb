class CreateTrackers < ActiveRecord::Migration
  def change
    create_table :trackers do |t|
      t.string :workerID
      t.string :string
      t.string :audioID
      t.string :string
      t.string :timeAt
      t.string :integer
      t.string :keyCount
      t.string :integer

      t.timestamps null: false
    end
  end
end
