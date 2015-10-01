json.array!(@transcriptions) do |transcription|
  json.extract! transcription, :id, :data, :user_id
  json.url transcription_url(transcription, format: :json)
end
