class VehicleRecord < ActiveRecord::Base
	belongs_to :vehicle
	validates_presence_of :record_type,:expiration_date
	validate :check_date

	has_attached_file :image
  	#do_not_validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	do_not_validate_attachment_file_type :image

	private
	def check_date
		if self.expiration_date < Date.today
			errors.add(:expiration_date,"Expiration Date should be greater than today")
		end
	end

end
