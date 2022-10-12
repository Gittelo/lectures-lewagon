# define the price
price_to_find = rand(1..5)
#initialize of choice variable
choice = nil
# keep asking until it is true
       #nil       #5
until choice == price_to_find
  # get the guess fom the 'player
  puts "What is your guess?"
  # re
  choice = gets.chomp.to_i
end
# tell them that it guess the right one
puts "You have guess the right price! price: #{price_to_find}"
