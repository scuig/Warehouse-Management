class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :location_name
      t.string :municipio
      t.string :state

      t.timestamps null: false
    end
  end
end
