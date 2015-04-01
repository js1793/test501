json.array!(@supervisors) do |supervisor|
  json.extract! supervisor, :id, :.ideagroup_id, :coach_id, :seniority
  json.url supervisor_url(supervisor, format: :json)
end
