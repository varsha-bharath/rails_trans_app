class VehiclePaymentsController < ApplicationController

def index
		@vehicle_payments = VehiclePayment.all
	end

	def show
		@vehicle_payment = VehiclePayment.find(params[:id])
	end

	def create
		@vehicle_payment = VehiclePayment.new(vehicle_payment_params)
		if @vehicle_payment.save
			redirect_to vehicles_path,notice:"Successfully created the new Vehicle Payments Details"
		else
			render action: "new"
		end
	end

	def edit
		@vehicle_payment = VehiclePayment.find(params[:id])
	end

	def update
		@vehicle_payment = VehiclePayment.find(params[:id])
		if @vehicle_payment.update_attributes(vehicle_payment_params)
			redirect_to vehicle_payments_path,notice:"Successfully updated the Vehicle Payments details"
		else
			render action:"edit"
		end
	end

	def new
		@vehicle_payment = VehiclePayment.new

	end

	def destroy
		@vehicle_payment = VehiclePayment.find(params[:id])
		@vehicle_payment.destroy
		redirect_to vehicle_payment_path,notice: "Successfully deleted the vehicle payment details"
		
	end

	private 

	def vehicle_payment_params
		params[:vehicle_payment].permit(:amount_type,:amount_paid,:payment_date,:mode_of_payment,:vehicle_id)
	end 

end
