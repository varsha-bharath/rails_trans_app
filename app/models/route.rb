class Route < ActiveRecord::Base

	has_many :vehicles, through: :vehicle_routes
	has_many :route_locations
	has_many :locations, through: :route_locations
	validates_presence_of :name
end

