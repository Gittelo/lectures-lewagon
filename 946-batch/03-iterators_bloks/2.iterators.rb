require "byebug"
musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']
# Each

musicians.each do |musician|
# puts "hello great #{musician.capitalize}"
end

#(1..20).each do |element|
# p element
#end
musicians.each_with_index do |musician, index|
 # puts "#{index + 1} - Hi #{musician}"
end

#MAP
upcase_musicians = musicians.map do |musician|
 musician.upcase
end

p upcase_musicians

upcase_musicians = []
musicians.each do |musician|
  upcase_musicians << musician.upcase
end

p upcase_musicians

first_names = musicians.map do |musician|
  musician.split.first
end

p first_names

#count
number = musicians.count do |musician|
  musician[0] == "R"
  #musician.start_with?("R")
  #musician.start_with?("Ro")
end



number = musicians.count { |musician|  musician[0] == "Z" }

p number

#Select
r_musicians = musicians.select do |musician|
  musician[0] == "Z"
end

p r_musicians
