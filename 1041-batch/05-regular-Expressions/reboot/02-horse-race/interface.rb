# 1. greet the user
puts "Welcome to horse race 😀🏇🐎"
# 2. create the horses
horses = ["Flash", "Tunder", "Star gazer", "Hoof hearted"]
answer = "y"
balance = 100

while answer == "y" && balance > 10
  # 3. print the horses that the user can bet one
  puts "the horses are:"
  horses.each_with_index do |element, index|
    puts "#{index + 1}-#{element}"
  end
  puts "your balance is #{balance}!!"
  # 4. ask the user which horse it wants to bet
  puts "Which horse you want to bet on? [select a number]"
  # 4.1 get the user choice
  user_horse_index = gets.chomp.to_i
  user_horse = horses[user_horse_index - 1]
  puts "The race just started"

  3.times do
    puts "tu tu tu"
    sleep(1)
    puts "the one on the front is #{horses.sample}"
  end
  puts "crooooossssing the finishhhing lineeeee...."
  sleep(1)

  # 5  run the race (randomly choose one winner)
  winner = horses.sample
  # 6 based on the answer of the user with the winner tell him if it Win or lose
  if user_horse == winner
    puts "You won"
    balance = balance + 50
    puts "total balance: #{balance}"
  else
    balance = balance - 10
    puts "you lost. the winner is: #{winner}"
    puts "total balance: #{balance}"
  end

  puts "Do you want to play again?"
  answer = gets.chomp.downcase
end
