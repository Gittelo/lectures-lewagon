puts "pick a number"
number = gets.chomp.to_i

# there are two question marks in here!
puts number.even? ? "it'even" : "it's odd"
