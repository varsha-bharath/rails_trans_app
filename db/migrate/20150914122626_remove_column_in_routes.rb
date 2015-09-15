class RemoveColumnInRoutes < ActiveRecord::Migration
  def change
  	remove_column :routes, :latitude 
  	remove_column :routes, :longitude
  	remove_column :routes, :possition
  end
end
