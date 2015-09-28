class Vehicle < ActiveRecord::Base
	has_many :accessories
	has_many :vehicle_records
	has_many :vehicle_payments
	has_many :vehicle_drivers
	has_many :drivers, through: :vehicle_drivers

	validates_presence_of :name,:vehicle_type,:reg_no,:chassis_no,:engine_no
	validates_uniqueness_of :reg_no,:chassis_no,:engine_no
	validate :check_date
	
	has_attached_file :rc_image
	has_attached_file :insurance_image
	has_attached_file :emission_image
  	#do_not_validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	do_not_validate_attachment_file_type :rc_image, :insurance_image, :emission_image

	before_destroy :delete_vehicle_records,:delete_accessories,:delete_vehicle_payments
	
	private
	
	def check_date
		if self.expiration_date < Date.today
			errors.add(:expiration_date,"Expiration Date should be greater than today")
		end
	end
	
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
