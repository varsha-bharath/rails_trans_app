class ClientsController < ApplicationController

  def index
  	@clients = Client.all
  end

  
  def new
  	@client = Client.new
  end

  
  def create
  	@client = Client.new(client_params)
     Alert.add_client(@client,current_user).deliver!
  	if @client.save
  		redirect_to clients_path, notice: "Successfully created a new Client"
  	else
  		render action: "new"
  	end
  end

  
  def edit
  	@client = Client.find(params[:id])
  end

  
  def update
     @client = Client.find(params[:id])
     if @client.update_attributes(client_params)
     	redirect_to clients_path, notice: "Successfully update the client"
     else
     	render action: "edit"
     end
  end

  
  def destroy
  	@client = Client.find(params[:id])
  	@client.destroy
  	redirect_to clients_path, notice: "Successfully delete the client"
  end

  def show
  	@client = Client.find(params[:id])
  end

  private

  def client_params
      params[:client].permit(:name, :p_o_c, :email, :phone, :location )    
  end

end
