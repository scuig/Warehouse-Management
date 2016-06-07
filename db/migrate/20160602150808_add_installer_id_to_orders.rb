class AddInstallerIdToOrders < ActiveRecord::Migration
  def change
    add_reference :orders, :installer, index: true, foreign_key: true
  end
end
