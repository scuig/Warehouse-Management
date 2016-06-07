class AddOrderKindIdToOrders < ActiveRecord::Migration
  def change
    add_reference :orders, :order_kind, index: true, foreign_key: true
  end
end
