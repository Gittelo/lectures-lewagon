def playing(computer_choice, user_choice)
#6. compute winner based on answer and computer choice
  if computer_choice == user_choice
    return "Draw"
  elsif (computer_choice == "rock" && user_choice == "paper") ||
        (computer_choice == "paper" && user_choice == "scissor") ||
        (computer_choice == "scissor" && user_choice == "rock")
    return "You win! The computer choise was: #{computer_choice}"
  else
    return "You lost :( The computer choise was: #{computer_choice}"
  end
end
