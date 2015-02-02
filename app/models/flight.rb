class Flight < ActiveRecord::Base
  belongs_to :arriving_airport,   class_name: "Airport"
  belongs_to :departing_airport,  class_name: "Airport"
  has_many   :bookings

  def self.search(params)
  end

  def self.list_dates
  	sorted = Flight.all.order(:departure)
    sorted.collect{ |f| f.departure.strftime('%B %d, %Y') }.uniq
  end

  def self.valid_airports
  	Airport.all.collect{ |a| [ a.code, a.id ] }
  end

  def self.search(params)
    Flight.where(arriving_airport_id:  params[:arriving_airport],
                 departing_airport_id: params[:departing_airport],
                 departure:            Flight.range(params[:departure_date]) )                            
  end

  def self.range(date)
  	unless  date.nil? || date.empty?
  		DateTime.strptime(date, '%B %d, %Y').beginning_of_day..DateTime.strptime(date, '%B %d, %Y').end_of_day
  	end
  end
end
