class AddLocationIdToOrders < ActiveRecord::Migration
  def change
    add_reference :orders, :location, index: true, foreign_key: true
  end
end
