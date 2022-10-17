require_relative "calculator.rb"
answer = "y"

while answer == "y"
  # 1. Ask the user for the 1st number
  puts "Please enter the first number:"
  # 1.1 store the user choice
  first_number = gets.chomp.to_i
  # 2. Ask the user for the 2nd number
  puts "Please enter the second number:"
  # 2.1 store the user choice (second number)
  second_number = gets.chomp.to_i
  # 3. Ask the user for the operator [+ | - | / | *]
  puts "What is the operation that you would like to do? [+ | - | / | *]"
  # 3.1 store the user choice (operator)
  operator = gets.chomp

  total = computation(first_number, second_number, operator)
    #based on that compute the actual math
  # 5 print the result so the user can

  puts "result: #{total}"
  puts "Do you want to calculate again? [y | n]"
  answer = gets.chomp.downcase
end
