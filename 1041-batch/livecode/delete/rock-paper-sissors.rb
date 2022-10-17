# computer choice
computer_choice = ["rock", "paper", "scissors"].sample
# our choise
puts "Please choose [rock, paper, scissors]"
input_choice = gets.chomp.downcase
# compare and based on that gives the result

  if (input_choice == "rock" && computer_choice == "scissors") ||
    (input_choice == "paper" && computer_choice == "rock") ||
    (input_choice == "scissors" && computer_choice == "paper")
    puts "you won! computer: #{computer_choice} you: #{input_choice}"
  elsif (computer_choice == "rock" && input_choice == "scissors") ||
        (computer_choice == "paper" && input_choice == "rock") ||
        (computer_choice == "scissors" && input_choice == "paper")
    puts "You lost!  computer: #{computer_choice} you: #{input_choice}"
  else
    puts "It is a draw!  computer: #{computer_choice} you: #{input_choice}"
  end

=begin
if computer_choice == input_choice
  puts "it is a draw"
else
 if computer_choice == "rock"
  player_win = input_choice == "paper"
 elsif computer_choice == "paper"
  player_win = input_choice == "scissors"
 elsif computer_choice == "scissors"
  player_win = input_choice == "rock"
 end

  if player_win
    puts "The computer chose #{computer_choice}, you win!"
  else
    puts "The computer chose #{computer_choice}, computer wins!"
  end

end
=end
