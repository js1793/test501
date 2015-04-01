json.array!(@sec_lists) do |sec_list|
  json.extract! sec_list, :id, :.ideanumber
  json.url sec_list_url(sec_list, format: :json)
end
