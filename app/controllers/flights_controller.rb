class FlightsController < ApplicationController

	def index
		@flights = Flight.search(params)
		@airport_options = Airport.list_codes
	end

end
