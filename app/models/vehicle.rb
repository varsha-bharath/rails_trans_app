class Vehicle < ActiveRecord::Base
	has_many :accessories
	has_many :vehicle_records
	has_many :vehicle_payments
	validates_presence_of :name,:vehicle_type,:reg_no,:chassis_no,:engine_no
	validates_uniqueness_of :reg_no,:chassis_no,:engine_no

	before_destroy :delete_vehicle_records,:delete_accessories,:delete_vehicle_payments
	
	private
	
	def delete_vehicle_records
			VehicleRecord.delete(self.vehicle_record_ids) 		
	end
	
	def delete_accessories
			Accessory.delete(self.accessory_ids) 		
	end
	
	def delete_vehicle_payments
			VehiclePayment.delete(self.vehicle_payment_ids) 		
	end
	
end
