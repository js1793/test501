json.array!(@titles) do |title|
  json.extract! title, :id, :appleader_title, :comments
  json.url title_url(title, format: :json)
end
