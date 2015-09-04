class VehicleClient < ActiveRecord::Base
	belongs_to :vehicle
	belongs_to :client
end
