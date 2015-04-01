json.array!(@secs) do |sec|
  json.extract! sec, :id, :num_session, :day_session, :t_session, :comments
  json.url sec_url(sec, format: :json)
end
