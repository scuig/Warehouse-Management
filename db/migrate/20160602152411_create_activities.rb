class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :activity_name
      t.float :activity_cost

      t.timestamps null: false
    end
  end
end
