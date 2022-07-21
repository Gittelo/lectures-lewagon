require_relative "castel.rb"
require_relative "house.rb"

alladin_castle = Castel.new("alladin", 100, 200, "Diogo")
jasmin_castle = Castel.new("jasmin", 100, 200)

#p alladin_castle.width
#p alladin_castle.length
#p alladin_castle.floor_area
#p alladin_castle.has_a_butler?
#p jasmin_castle.has_a_butler?

jz_house = House.new("JZ", 2000000, 3000000)


#bulding1 = Building.new("name",22,44)
#bulding1.has_a_butler?
butler = Butler.new("diogo", jz_house)
