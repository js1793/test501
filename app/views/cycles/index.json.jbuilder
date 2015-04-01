json.array!(@cycles) do |cycle|
  json.extract! cycle, :id, :cycle_name, :comments
  json.url cycle_url(cycle, format: :json)
end
