json.array!(@trascripts) do |trascript|
  json.extract! trascript, :id, :content, :user_id
  json.url trascript_url(trascript, format: :json)
end
