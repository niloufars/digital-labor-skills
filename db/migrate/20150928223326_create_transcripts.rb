class CreateTranscripts < ActiveRecord::Migration
  def change
    create_table :transcripts do |t|
      t.text :content
      t.string :user_id

      t.timestamps null: false
    end
  end
end
