require "date"

def greetings(name)
  return "Hi #{name.capitalize}, we like you!"
end

sentense = greetings("telo")
puts sentense

puts greetings("rony")
puts greetings("diogo")
#puts "Hi Telo"
#puts "Hi Rony"
#puts "Hi Diogo"
middle_name = "castro"

def full_name(first_name, last_name)
 name = first_name.capitalize + " " + last_name.capitalize
 return "Hi #{name}, this is an amazing day!"
end

puts full_name("diogo","telo")
puts full_name("cristiano","ronaldo")


def tomorrow
  today = Date.today
  today = today + 1
  return today
end

def tomorrow
  today = Date.today
  return today + 1
end

puts tomorrow
