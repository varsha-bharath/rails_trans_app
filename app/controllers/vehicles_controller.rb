class VehiclesController < ApplicationController

before_filter :authenticate_user!

#load_and_authorize_resource

	def index
		@vehicles = Vehicle.all
		@drivers = Driver.all
		@clients = Client.all
		@locations = Location.all
		@routes = Route.all
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
		@driver = Driver.new
		@drivers =Driver.all
		@vehicle = Vehicle.find(params[:id])
		@accessory = Accessory.new
		@accessories = Accessory.all
		@vehicle_payments = VehiclePayment.all
		@vehicle_payment_months = @vehicle_payments.group_by{|t| t.payment_date.beginning_of_month }
		@vehicle_payment = VehiclePayment.new
		@vehicle_payments =VehiclePayment.all

	end
	
	def edit
		@vehicle = Vehicle.find(params[:id] )

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
		params[:vehicle].permit(:id,:name,:vehicle_type,:reg_no,:chassis_no,:engine_no,{:driver_ids => []}, :rc_image, :insurance_image, :emission_image, :rc_expiration_date, :insurance_expiration_date, :emission_expiration_date)
	end 

end