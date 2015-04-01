json.array!(@coach_orders) do |coach_order|
  json.extract! coach_order, :id, :.gitignorecoach_role
  json.url coach_order_url(coach_order, format: :json)
end
