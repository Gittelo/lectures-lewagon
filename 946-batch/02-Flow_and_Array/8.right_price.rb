right_price = rand(1..5.0)
guess = nil

#while guess != right_price
until guess == right_price
  puts "What is the price between 1€ and 5€?"
  guess = gets.chomp.to_i
end

puts "you get it right!"
