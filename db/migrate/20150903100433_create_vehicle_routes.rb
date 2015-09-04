class CreateVehicleRoutes < ActiveRecord::Migration
  def change
    create_table :vehicle_routes do |t|
    	t.integer :vehicles_id
    	t.integer :routes_id
      t.timestamps null: false
    end
  end
end
