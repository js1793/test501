json.array!(@emails) do |email|
  json.extract! email, :id, :appleader_id, :email_account, :which_phone, :comments
  json.url email_url(email, format: :json)
end
