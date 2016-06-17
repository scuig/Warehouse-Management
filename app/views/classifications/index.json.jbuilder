json.array!(@classifications) do |classification|
  json.extract! classification, :id, :name, :price
  json.url classification_url(classification, format: :json)
end
