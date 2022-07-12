numbers_array = (1..100).to_a
right_number = numbers_array.sample

puts "Welcome to the right price!!!"
puts "Pick a number for this random item"
choice = gets.chomp.to_i


while right_number != choice
  puts "You lost!"

  if right_number > choice
    puts "The number that you are trying to guess for is higher"
  else
    puts "The number that you are trying to guess for is lower"
  end

  puts "Take another number:"
  choice = gets.chomp.to_i
end
  puts "You won!"
