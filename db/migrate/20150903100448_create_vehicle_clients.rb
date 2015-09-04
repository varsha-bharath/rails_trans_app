class CreateVehicleClients < ActiveRecord::Migration
  def change
    create_table :vehicle_clients do |t|
    	t.integer :vehicles_id
    	t.integer :clients_id
      t.timestamps null: false
    end
  end
end
