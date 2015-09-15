class Location < ActiveRecord::Base

	has_many :route_locations
	has_many :routes, through: :route_locations
	validates_presence_of :name, :latitude,:longitude

end
