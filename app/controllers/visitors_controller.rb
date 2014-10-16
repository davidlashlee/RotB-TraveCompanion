class VisitorsController < ApplicationController

	def index
		
	end

	def show
		@users = User.all

		@curr_user_id = current_user.id
		@destinations = Destination.where("user_id != '14'")
		# @destinations.sort! { |a,b| a.location <=> b.location } 

	end
end
