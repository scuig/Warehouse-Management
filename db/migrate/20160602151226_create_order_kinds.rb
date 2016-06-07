class CreateOrderKinds < ActiveRecord::Migration
  def change
    create_table :order_kinds do |t|
      t.string :order_kind_name

      t.timestamps null: false
    end
  end
end
