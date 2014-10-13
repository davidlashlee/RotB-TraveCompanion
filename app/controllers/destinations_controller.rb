class DestinationsController < ApplicationController

	def index
		@destinations = Destination.all
	end

	def new
		@destination = Destination.new
	end

	def create
		@destination = Destination.new(destination_params)
		@destination.save
		redirect_to @destination
	end

	def edit
		@destination = Destination.find(params[:id])
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
	def tour_params
		params.require(:destination).permit(:name,:user_id,:start_date, :end_date)
	end

end
