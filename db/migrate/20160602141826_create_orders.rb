class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :account
      t.string :work_order
      t.date :check_in

      t.timestamps null: false
    end
  end
end
