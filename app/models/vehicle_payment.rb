class VehiclePayment < ActiveRecord::Base
	belongs_to :vehicle
	validates_presence_of :amount_type,:amount_paid,:payment_date,:mode_of_payment

end
