class DriversController < ApplicationController


	def index
        @drivers = Driver.all
	end

	def new
		@driver = Driver.new
	end

	def create
		@driver = Driver.new(driver_params)
		if @driver.save
			redirect_to drivers_path, notice: "Successfully created a new Driver"
		else
			render action: "new"
		end
	end

	def edit
		@driver = Driver.find(params[:id])
	end

	def update
		@driver = Driver.find(params[:id])
		if @driver.update_attributes(driver_params)
			redirect_to drivers_path, notice: "Successfully updated the Driver"
		else
			render action: "edit"
		end
	end

	def destroy
		@driver = Driver.find(params[:id])
		@driver.destroy
		redirect_to drivers_path, notice: "Successfully deleted the driver"
	end

	def show
		@driver = Driver.find(params[:id])
		@days_left = @driver.dl_expiration - Date.today
	end


	private

	def driver_params
		params[:driver].permit(:name, :age, :blood_group, :mobile_no, :address, :emergency_contact, :dl_expiration, :back_ground_check, :image_p, :image_dl)
	end
end
