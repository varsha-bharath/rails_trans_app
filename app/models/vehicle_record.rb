class VehicleRecord < ActiveRecord::Base
	belongs_to :vehicle
	validates_presence_of :record_type,:expiration_date
	validate :check_date

	private
	def check_date
		if self.expiration_date < Date.today
			errors.add(:expiration_date,"Expiration Date should be greater than today")
		end
			end

end
