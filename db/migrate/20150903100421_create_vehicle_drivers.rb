class CreateVehicleDrivers < ActiveRecord::Migration
  def change
    create_table :vehicle_drivers do |t|
    	t.integer :vehicles_id
    	t.integer :drivers_id
      t.timestamps null: false
    end
  end
end
