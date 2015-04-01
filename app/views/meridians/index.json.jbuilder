json.array!(@meridians) do |meridian|
  json.extract! meridian, :id, :meridian_name, :comments
  json.url meridian_url(meridian, format: :json)
end
