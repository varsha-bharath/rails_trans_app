class Driver < ActiveRecord::Base

	has_attached_file :image_p
	has_attached_file :image_dl
    
    validates_attachment_content_type :image_p, :image_dl, content_type: /\Aimage\/.*\Z/
	
	has_many :vehicle_drivers
	has_many :vehicles, through: :vehicle_drivers

	validates_presence_of :name, :age, :blood_group, :mobile_no, :address, :emergency_contact, :dl_expiration,:image_dl,:image_p, :driver_salary

	validates_numericality_of :mobile_no, :emergency_contact
	validates_uniqueness_of :mobile_no

	validate :check_date,:check_duplication_of_mobile
	validates_length_of :mobile_no, :emergency_contact,is: 10

	private
	def check_date
		if self.dl_expiration < Date.today
			errors.add(:dl_expiration,"Expiration Date should be greater than today")
		end
	end
	def check_duplication_of_mobile
		if self.mobile_no == self.emergency_contact
			errors.add(:emergency_contact, " Number shouldnot be same as Mobile number")
		end
	end

end