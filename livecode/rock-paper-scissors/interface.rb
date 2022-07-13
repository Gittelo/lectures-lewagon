require_relative "rock_paper_scissor.rb"

#3. greeting the user welcome to the game
puts "Welcome to the rock paper scissor game!"
#1. array with the 3 options
options = ["rock", "paper", "scissor"]
computer_choice = nil
user_choice = nil

#while computer_choice == user_choice
until computer_choice != user_choice
#2. set the computer choice
computer_choice = options.sample
#4. ask pick one of the options
puts "What do you want to pick? [rock, paper, scissor]"
#5. get the answer
user_choice = gets.chomp
  #6. compute winner based on answer and computer choice
  puts playing(computer_choice, user_choice)
end

#7. say goodbye
puts "Goodbye. Thanks for playing!"
