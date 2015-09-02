class Driver < ActiveRecord::Base
	
	has_many :vehicles, through: :vehicle_drivers

	validates_presence_of :name, :age, :blood_group, :mobile_no, :address, :emergency_contact, :dl_expiration, :back_ground_check

	validates_numericality_of :mobile_no, :emergency_contact

	validates_length_of :mobile_no, :emergency_contact, maximum: 10, minimum: 10


end
