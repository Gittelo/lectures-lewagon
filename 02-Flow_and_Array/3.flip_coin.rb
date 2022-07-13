puts "Welcome to the flip coin game!"
computer_coin = ["heads", "tails"].sample

puts "What is your choice? [heads | tails]"
choice = gets.chomp

=begin
if choice == computer_coin
  puts "you won"
else
  puts "you lost"
end
=end

# condition ? code_when_truthy : code_when_falsey

# option 1
puts choice == computer_coin ? "you won" : "you lost"

# option 2
#verb = choice == computer_coin ? "won" : "lost"
#puts "you #{verb}"
