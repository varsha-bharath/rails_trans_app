class VehiclePayment < ActiveRecord::Base
	belongs_to :vehicle
	validates_presence_of :amount_type,:amount_paid,:payment_date,:mode_of_payment

	has_attached_file :image
  	#do_not_validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	do_not_validate_attachment_file_type :image


end
