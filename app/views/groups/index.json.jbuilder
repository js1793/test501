json.array!(@groups) do |group|
  json.extract! group, :id, :group_gid, :cycle_id, :school_id, :meridian_id, :type_id, :comments
  json.url group_url(group, format: :json)
end
