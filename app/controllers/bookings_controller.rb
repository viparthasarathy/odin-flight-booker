class BookingsController < ApplicationController

	def new
		@flight = Flight.find(params[:flight_id])
		passenger_size = params[:passengers]
	end

end
