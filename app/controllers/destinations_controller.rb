class DestinationsController < ApplicationController
  before_filter :authenticate_user!
	def index
		@destinations = Destination.all
	end

	def new
		@destination = Destination.new
		@curr_user = current_user
	end

	def create
		# puts destination_params
		@destination = Destination.new(destination_params)
		# puts destination_params
		@destination.save
		redirect_to @destination
	end

	def edit
		@destination = Destination.find(params[:id])
		@curr_user = current_user
	end

	def update
		@destination = Destination.find(params[:id])

		if @destination.update(destination_params)
			redirect_to @destination
		else
			render 'edit'
		end
	end

	def show
		@destination = Destination.find(params[:id])
	end

	def destroy
		@destinations = Destination.find(params[:id])
		@destinations.destroy

	redirect_to '/destinations/new', :notice => "Your destination has been deleted"
	end

	private
	def destination_params
		params.require(:destination).permit(:location,:start_date,:end_date,:user_id)
	end

end
