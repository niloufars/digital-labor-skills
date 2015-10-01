class CreateTranscriptions < ActiveRecord::Migration
  def change
    create_table :transcriptions do |t|
      t.text :data
      t.string :user_id

      t.timestamps null: false
    end
  end
end
