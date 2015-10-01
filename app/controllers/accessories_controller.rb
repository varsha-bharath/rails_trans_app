class AccessoriesController < ApplicationController

	def index
		@accesories = Accessory.all
	end

	def new
		@accessory = Accessory.new
	end

	def show
		
		begin
			@accessory = Accessory.find(params[:id])
		rescue ActiveRecord::RecordNotFound
			redirect_to accessory_path,notice: "Accessory Details ur looking for doesnot exits"
		end
		
	end

	def create
		@accessory = Accessory.new(accessory_params)
		if @accessory.save
			redirect_to vehicles_path,notice:"Successfully created the Accessory Details"
		else
			render action: "new"
		end
	end

	def edit
		@accessory = Accessory.find(params[:id])
	end

	def update
		@accessory = Accessory.find(params[:id])
		if @accessory.update_attributes(accessory_params)
			redirect_to vehicles_path,notice:"Successfully updated the Accessory details"
		else
			render action:"edit"
		end
	end

	def destroy
		@accessory = Accessory.find(params[:id])
		@accessory.destroy
		redirect_to vehicles_path,notice: "Successfully deleted the Accessory details"
		
	end

	private 

	def accessory_params
		params[:accessory].permit(:id,:name,:cost,:model,:vehicle_id, :serial_no, :invoice_image)
	end 

end
