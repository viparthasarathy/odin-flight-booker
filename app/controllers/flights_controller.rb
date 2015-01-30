class FlightsController < ApplicationController

  def index
    @airport_options   = Flight.valid_airports
    @departure_options = Flight.list_dates
    @passenger_options = [1, 2, 3, 4]
    @flights           = Flight.search(params)
  end

end
