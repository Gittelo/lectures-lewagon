#1. generate random number between 1 & 100 - rand(100)
random_number = (1..100).to_a.sample(1)[0]
run = true
#5. If its the same the price is right, if not loop
while run
  #2. ASk the user for a number
  puts "Give me a number between 1 and 100, please!"
  #3. Get the user number
  input_number = gets.chomp.to_i
  #4. Check if it is the same as the random number
  if random_number == input_number
    puts "You won!"
    run = false
  else
    puts "You lost! Try again pssss: #{random_number}"
  end
end
