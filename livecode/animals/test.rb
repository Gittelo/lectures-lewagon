#create a instance
require_relative "lion.rb"
require_relative "meerkat.rb"
require_relative "warthog.rb"
lion1 = Lion.new("Simba")
lion1.talk

lion2 = Lion.new("Nala")
lion2.talk


timon = Meerkat.new("Timon")

pumba = Warthog.new("Pumba")

animals_arr = [lion1, lion2, timon, pumba]
animals_arr.each do |animal|
puts animal.talk
end

p Animal.phyla

p lion1.eat("gazelle", "ketchup")
p timon.eat("scorpion")
