class Driver < ActiveRecord::Base

	has_attached_file :image_p
	has_attached_file :image_dl
    
    validates_attachment_content_type :image_p, :image_dl, content_type: /\Aimage\/.*\Z/
	
	has_many :vehicles, through: :vehicle_drivers

	validates_presence_of :name, :age, :blood_group, :mobile_no, :address, :emergency_contact, :dl_expiration

	validates_numericality_of :mobile_no, :emergency_contact

	validates_length_of :mobile_no, :emergency_contact,is: 10

end
