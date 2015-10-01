class Vehicle < ActiveRecord::Base
	has_many :accessories
	has_many :vehicle_records
	has_many :vehicle_payments
	has_many :vehicle_drivers
	has_many :drivers, through: :vehicle_drivers

	validates_presence_of :name,:vehicle_type,:reg_no,:chassis_no,:engine_no,:rc_expiration_date,:insurance_expiration_date,:emission_expiration_date
	validates_uniqueness_of :reg_no,:chassis_no,:engine_no
	validate :emission_date,:rc_date,:insurance_date
	
	has_attached_file :rc_image
	has_attached_file :insurance_image
	has_attached_file :emission_image
  	#do_not_validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	do_not_validate_attachment_file_type :rc_image, :insurance_image, :emission_image

	before_destroy :delete_vehicle_records,:delete_accessories,:delete_vehicle_payments
	
	private
	
	def emission_date
		if self.emission_expiration_date < Date.today
			errors.add(:emission_expiration_date,"Expiration Date should be greater than today")
		end
	end
	
	def rc_date
		if self.rc_expiration_date < Date.today
			errors.add(:rc_expiration_date,"Expiration Date should be greater than today")
		end
	end
	
	def insurance_date
		if self.insurance_expiration_date < Date.today
			errors.add(:insurance_expiration_date,"Expiration Date should be greater than today")
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
