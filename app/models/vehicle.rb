class Vehicle < ActiveRecord::Base
	has_many :accessories
	has_many :vehicle_records
	has_many :vehicle_payments
	validates_presence_of :name,:vehicle_type,:reg_no,:chassis_no,:engine_no
	validates_uniqueness_of :reg_no,:chassis_no,:engine_no

	before_destroy :delete_vehicle_records
	private
	
	def delete_vehicle_records
			VehicleRecord.delete(self.vehicle_record_ids) 		
	end

end
