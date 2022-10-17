def computation(first_number, second_number, operator)
# 4 comute the math acording to the user input (first number, second number, operator)
  #4.1 check what operator the user input
  case operator
  when "+"
   result = first_number + second_number
  when "-"
   result = first_number - second_number
  when "/"
   result = first_number.to_f / second_number
  when "*"
   result = first_number * second_number
  else
   result = "not and operator"
  end
end
