students =     [ "Peter", "Mary", "George", "Emma", "Diogo" ]
#Arrays
students.each do |student|
  puts "#{student}"
end

paris = {
  "country" => "France",
  "population" => 2211000
   }

paris.each do |element|
  key = element[0]
  value = element[1]
  #puts "The key is #{key} and the value #{value}"
end

paris.each do |key, value|
  puts "The key is #{key} and the value #{value}"
end
