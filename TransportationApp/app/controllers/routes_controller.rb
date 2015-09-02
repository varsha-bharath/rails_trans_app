class RoutesController < ApplicationController

	def index
        @routes = Route.all 
	end

	def new
		@route = Route.new
	end

	def create
		@route = Route.new(route_params)
		if @route.save
			redirect_to routes_path, notice: "Successfully Route created"
		else
			render action: "new"
		end
	end

	
	def edit
		@route = Route.find(params[:id])
	end

	def update
		@route = Route.find(params[:id])
		if @route.update_attributes(route_params)
			redirect_to routes_path, notice: "Successfully Route updated"
		else
			render action: "edit"
		end
	end

	def destroy
        @route = Route.find(params[:id])
        @route.destroy
        redirect_to routes_path, notice: "Successfully delete Route"
	end

	def show
		@route = Route.find(params[:id])
	end


	private
	def	route_params
        params[:route].permit(:name, :latitude,:longitude, :possition)  
    end	

end
