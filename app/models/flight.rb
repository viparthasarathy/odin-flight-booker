class Flight < ActiveRecord::Base
	belongs_to :arriving_airport,   class_name: "Airport"
	belongs_to :departing_airport,  class_name: "Airport"
end
