json.array!(@schools) do |school|
  json.extract! school, :id, :appschool_name, :school_gid, :comments, :school_address, :school_url, :comments
  json.url school_url(school, format: :json)
end
