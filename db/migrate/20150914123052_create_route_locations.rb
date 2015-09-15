class CreateRouteLocations < ActiveRecord::Migration
  def change
    create_table :route_locations do |t|
      t.integer :route_id
      t.integer :location_id

      t.timestamps null: false
    end
  end
end
