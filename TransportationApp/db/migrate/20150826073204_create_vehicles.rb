class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
    	t.string :name
    	t.string :vehicle_type
    	t.string :reg_no
    	t.string :chassis_no
    	t.string :engine_no
      t.timestamps null: false
    end
  end
end
