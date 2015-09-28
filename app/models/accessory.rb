class Accessory < ActiveRecord::Base
	belongs_to :vehicle
	validates_presence_of :name,:cost,:model,:serial_no,:invoice_image
	
	validates_numericality_of :serial_no
	
	has_attached_file :invoice_image
  	#do_not_validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	do_not_validate_attachment_file_type :invoice_image

end
