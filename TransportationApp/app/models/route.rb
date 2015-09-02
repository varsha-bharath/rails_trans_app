class Route < ActiveRecord::Base

	has_many :vehicles, through: :vehicle_routes

	validates_presence_of :name, :latitude,:longitude, :possition

end
