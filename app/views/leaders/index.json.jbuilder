json.array!(@leaders) do |leader|
  json.extract! leader, :id, :first_name, :middle_initial, :last_name, :leader_gid, :school_id, :comments
  json.url leader_url(leader, format: :json)
end
