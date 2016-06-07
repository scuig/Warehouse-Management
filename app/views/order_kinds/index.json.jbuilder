json.array!(@order_kinds) do |order_kind|
  json.extract! order_kind, :id, :order_kind_name
  json.url order_kind_url(order_kind, format: :json)
end
