class AddKeytimeToTranscriptions < ActiveRecord::Migration
  def change
    add_column :transcriptions, :keytime, :text
  end
end
