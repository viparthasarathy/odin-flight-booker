class Airport < ActiveRecord::Base
	has_many :arriving_flights,  class_name: "Flight", foreign_key: "arriving_airport_id"
	has_many :departing_flights, class_name: "Flight", foreign_key: "departing_airport_id"


	def self.list_codes
		Airport.all.collect{|a| [ a.code, a.id ] }
	end

	def self.list_dates
		Airport.all.collect{|a| }

end
