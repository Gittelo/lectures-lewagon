require_relative "credit-card.rb"
puts "Write a credit card number"
number = gets.chomp

puts card_validator(number)

