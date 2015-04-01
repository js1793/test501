json.array!(@trainings) do |training|
  json.extract! training, :id, :.idealeader_id, :offering_id, :register, :attended, :day, :payment, :certificate, :comments
  json.url training_url(training, format: :json)
end
