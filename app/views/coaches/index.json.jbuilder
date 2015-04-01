json.array!(@coaches) do |coach|
  json.extract! coach, :id, :appfirst_name, :middle_initial, :last_name, :coach_gid, :school_id, :email, :comments
  json.url coach_url(coach, format: :json)
end
