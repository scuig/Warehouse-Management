class CreateJoinTableActivityOrder < ActiveRecord::Migration
  def change
    create_join_table :activities, :orders do |t|
      # t.index [:activity_id, :order_id]
      # t.index [:order_id, :activity_id]
      t.float :quantity
    end
  end
end
