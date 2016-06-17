class CreateClassifications < ActiveRecord::Migration
  def change
    create_table :classifications do |t|
      t.text :name
      t.float :price

      t.timestamps null: false
    end
    add_reference :orders, :classification, index: true, foreign_key: true
  end
end
