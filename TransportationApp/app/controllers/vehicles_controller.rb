class VehiclesController < ApplicationController

	def index
		@vehicles = Vehicle.all
	end

	def new
		@vehicle = Vehicle.new
	end
	def create
		@vehicle = Vehicle.new(vehicle_params)
		if @vehicle.save
			redirect_to vehicles_path,notice: "Successfully created the #{@vehicle.name} vehicle details"
		else
			render action: "new"
		end
	end
	
	def show
		@vehicle = Vehicle.find(params[:id])
		@vehicle_record = VehicleRecord.new
		@vehicle_records =VehicleRecord.all
		@vehicle_payment = VehiclePayment.new
		@vehicle_payments =VehiclePayment.all

	end
	
	def edit
		@vehicle = Vehicle.find(params[:id])

	end
	
	def update
		@vehicle = Vehicle.find(params[:id])
		if @vehicle.update_attributes(vehicle_params)
			redirect_to vehicles_path,notice: "Successfully updated the #{@vehicle.name}Vehicle details"
		else
			render action:"edit"
		end
	end

	def destroy
		@vehicle = Vehicle.find(params[:id])
		@vehicle.destroy
		redirect_to vehicles_path,notice: "Successfully deleted the #{@vehicle.name} Vehicle and Vehicle details"
		
	end

def vehicle_params
		params[:vehicle].permit(:name,:vehicle_type,:reg_no,:chassis_no,:engine_no)
	end 
end

