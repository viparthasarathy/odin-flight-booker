# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

airports = Airport.create([{ code: "SFO"}, { code: "NYC"}, { code: "ATL"}, 
													 { code: "LAX"}, { code: "CHI"}, { code: "OAK"}])



airports.each do |airport_departing|
	duration = [8, 3, 6, 2, 4]
	date     = [2, 4, 2, 3, 6]
	airports.each do |airport_arriving|
		unless airport_departing == airport_arriving
			Flight.create( arriving_airport_id:    airport_arriving.id,
										departing_airport_id:   airport_departing.id,
										            duration:           duration.pop,
										           departure: date.pop.days.from_now )
		end
	end
end