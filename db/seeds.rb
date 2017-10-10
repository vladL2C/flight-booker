# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Airports Seed Data
airports = ["Auckland","Wellington","Christchurch",
            "Queenstown", "Dunedin", "Rotorua"]

airport_codes = ["AKL", "WLG", "CHC", 
                "ZQN", "DUD", "ROT"]

airports.each_with_index do |airport,code|
  Airport.create(code: airport_codes[code],
                  name: airport)
end  

#Flights Seed Data
fn = 200
Airport.all.each do |departing|
	Airport.all.each do |arriving|
		unless departing == arriving
		Flight.create(departing: departing,
									arriving: arriving,
									flight_number: fn,
									duration: rand(1..3))
		fn += 1
		end  
	end
end  
							               