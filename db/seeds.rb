# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Airports Data
airports = ["Auckland","Wellington","Christchurch",
            "Queenstown", "Dunedin", "Rotorua"]

airport_codes = ["AKL", "WLG", "CHC", 
                "ZQN", "DUD", "ROT"]

airports.each_with_index do |airport,code|
  Airport.create(code: airport_codes[code],
                  name: airport)
end                 