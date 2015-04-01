json.array!(@facilitators) do |facilitator|
  json.extract! facilitator, :id, :.gitignoregroup_id, :leader_id, :role_id, :title_id
  json.url facilitator_url(facilitator, format: :json)
end
