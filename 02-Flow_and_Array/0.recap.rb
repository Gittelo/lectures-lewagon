#String
name = "diogo"
food = "pizza"

# concatenation and interpolation
# concatenation several strings and variables
# interpolation one string with variables inside
puts "Hi, I am " + name + " and I like " + food
puts "Hi, I am #{name.capitalize} and I like #{food}"

#Integers
puts 15
"12".to_i
puts "Whats your age?"
age = gets.chomp.to_i # the user input is always a string! if we want to use it as a number we need to convert it
puts age.class

#Floats
age.to_f # convert a integer into a float

#Arrays
a = ["telo", 2, 4]
puts a
p a #inspect the array

st = "diogo"
puts st
p st

#methods
def name_of_the_method(decide_the_number_of_parameters)
  # decide what we want to return
end
