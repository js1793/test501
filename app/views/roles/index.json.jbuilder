json.array!(@roles) do |role|
  json.extract! role, :id, :appleader_role, :comments
  json.url role_url(role, format: :json)
end
