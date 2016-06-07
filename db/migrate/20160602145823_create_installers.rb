class CreateInstallers < ActiveRecord::Migration
  def change
    create_table :installers do |t|
      t.string :employee_key
      t.string :first_name
      t.string :last_name

      t.timestamps null: false
    end
  end
end
