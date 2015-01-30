class Flight < ActiveRecord::Base
  belongs_to :arriving_airport,   class_name: "Airport"
  belongs_to :departing_airport,  class_name: "Airport"

  def self.search(params)
  end

  def self.list_dates
  	sorted = Flight.all.order(:departure)
    sorted.collect{ |f| f.departure.strftime('%B %d, %Y') }.uniq
  end

  def self.valid_airports
  	Airport.list_codes
  end
end
