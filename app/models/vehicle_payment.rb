class VehiclePayment < ActiveRecord::Base
	belongs_to :vehicle
	validates_presence_of :amount_type,:amount_paid,:payment_date,:mode_of_payment
	validate :check_date
	has_attached_file :image
  	#do_not_validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	do_not_validate_attachment_file_type :image

private
	def check_date
		if self.payment_date > Date.today
			errors.add(:payment_date,"Payment Date should be Not be greater than today")
		end
	end

end
