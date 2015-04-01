json.array!(@phones) do |phone|
  json.extract! phone, :id, :appleader_id, :phone_number, :which_phone, :comments
  json.url phone_url(phone, format: :json)
end
