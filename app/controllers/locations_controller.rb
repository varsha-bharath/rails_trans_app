class LocationsController < ApplicationController
  
  def index
        @locations = Location.all 
  end

  def new
    @location = Location.new
  end

  def create
    @location= Location.new(location_params)
    if @location.save
      redirect_to locations_path, notice: "Successfully created Location"
    else
      render action: "new"
    end
  end

  
  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    if @location.update_attributes(location_params)
      redirect_to location_path, notice: "Successfully updated the Location"
    else
      render action: "edit"
    end
  end

  def destroy
        @location = Location.find(params[:id])
        @location.destroy
        redirect_to locations_path, notice: "Successfully delete Location"
  end

  def show
    @location = Location.find(params[:id])
  end


  private
  def location_params
        params[:location].permit(:id,:name,:latitude,:longitude)  
    end 

end



