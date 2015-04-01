json.array!(@seniorities) do |seniority|
  json.extract! seniority, :id, :.gitignorecoach_role
  json.url seniority_url(seniority, format: :json)
end
