class VehicleRecordsController < ApplicationController

	def index
		@vehicle_records = VehicleRecord.all
	end

	def show
		begin
			@vehicle_record = VehicleRecord.find(params[:id])
		rescue ActiveRecord::RecordNotFound
			redirect_to vehicle_record_path,notice: "Vehicle Record ur looking for doesnot exits"
		end
		#@days_left = @vehicle_record.RC - Date.today

		
	end

	def create
		@vehicle_record = VehicleRecord.new(vehicle_record_params)
		if @vehicle_record.save
			redirect_to vehicles_path(@vehicle_record.vehicle_id),notice:"Successfully created the new Vehicle Record Details"
		else
			render action: "new"
		end
	end

	def edit
		@vehicle_record = VehicleRecord.find_by(vehicle_id: params[:id])
	end

	def update
		@vehicle_record = VehicleRecord.find(params[:id])
		if @vehicle_record.update_attributes(vehicle_record_params)
			redirect_to vehicles_path,notice:"Successfully updated the Vehicle Record details"
		else
			render action:"edit"
		end
	end

	def new
		@vehicle_record = VehicleRecord.new

	end

	def destroy
		@vehicle_record = VehicleRecord.find_by(vehicle_id: params[:id])
		@vehicle_record.destroy
		redirect_to vehicles_path,notice: "Successfully deleted the vehicle details"
		
	end

	private 

	def vehicle_record_params
		params[:vehicle_record].permit(:id,:record_type, :expiration_date, :vehicle_id, :image)
	end 
end