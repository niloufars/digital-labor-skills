class AddKeystrokeToTranscriptions < ActiveRecord::Migration
  def change
    add_column :transcriptions, :keystroke, :text
  end
end
