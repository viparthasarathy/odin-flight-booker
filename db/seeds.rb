# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

airports = Airport.create([{ code: "SFO"}, { code: "NYC"}])

hours = [3, 6, 9, 27, 30, 33, 51, 54, 57]
hours.each do |hour|
	Flight.create( arriving_airport_id: 1,
				         departing_airport_id: 2,
				         duration: 5,
				         departure: hour.hours.from_now)
	Flight.create( arriving_airport_id: 2,
	               departing_airport_id: 1,
	               duration: 6,
	               departure: (hour + 5).hours.from_now)
end

