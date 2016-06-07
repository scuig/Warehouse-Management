json.array!(@orders) do |order|
  json.extract! order, :id, :account, :work_order, :check_in
  json.url order_url(order, format: :json)
end
