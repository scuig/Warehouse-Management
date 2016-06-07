json.array!(@activities) do |activity|
  json.extract! activity, :id, :activity_name, :activity_cost
  json.url activity_url(activity, format: :json)
end
