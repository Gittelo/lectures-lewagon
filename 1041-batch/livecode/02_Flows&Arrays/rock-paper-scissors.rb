# ask which choice from player
puts "Rock, Papper or Scissors?"
user_choice = gets.chomp.downcase
# make a random choice for the computer
computer_choice = ["rock", "papper", "scissors"].sample
# compare both choices
if user_choice == computer_choice
  puts "Draw"
elsif (user_choice == "rock" && computer_choice == "scissors") ||
      (user_choice == "scissors" && computer_choice == "papper") ||
      (user_choice == "papper" && computer_choice == "rock")
  puts "you won! computer choice : #{computer_choice}"
else
  puts "you lost  computer choice : #{computer_choice}"
end
# return result based on both choices
