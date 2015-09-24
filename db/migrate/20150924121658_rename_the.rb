class RenameThe < ActiveRecord::Migration
  def change
  	rename_column :vehicle_clients, :vehicles_id, :vehicle_id
  	rename_column :vehicle_drivers, :vehicles_id, :vehicle_id
  	rename_column :vehicle_routes, :vehicles_id, :vehicle_id
  	rename_column :vehicle_routes, :routes_id, :route_id
  	rename_column :vehicle_drivers, :drivers_id, :driver_id
  	rename_column :vehicle_clients, :clients_id, :client_id
  	
  end
end
