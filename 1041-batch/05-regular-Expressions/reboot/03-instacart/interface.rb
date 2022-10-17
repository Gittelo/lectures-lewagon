# 1. greeting the user
puts "----------------------------------------------"
puts "Hello customers!! Welcome to the instaaaacart!"
puts "----------------------------------------------"

# 2. create the list of items
# option 1
items = {kiwi: {price: 2, stock: 5}, apple: {price: 5, stock: 10}, peach: {price: 4, stock: 1}}

# 3. list the items that are on the store
items.each do |key, value|
  puts "#{key}: #{value[:price]}€ - (#{value[:stock]} available)"
end

user_input = ""
total = 0

cart = []

until user_input == :quit
  # 4. ask which item they want to add to the cart
  puts "Which item do you want to add to the cart?  (or 'quit' to checkout)"
  # 4.1. get the user input of the selected item
  user_input = gets.chomp.downcase.to_sym
  if items.key?(user_input)
    # 6. Ask the quantity
    puts "How many items?"
    # 6.1. guet the user input of the quantity
    quantity = gets.chomp.to_i
    # add items to the cart
    if quantity <= items[user_input][:stock]
      items[user_input][:stock] -= quantity
      cart << [user_input, quantity]
    else
      puts "We don't have enough quantity. only #{items[user_input][:stock]} availabel"
    end
    total = total + ( items[user_input][:price] * quantity)
  elsif user_input != :quit
    puts "We don't have #{user_input} today!!"
  end
end

# 6 print out the result
total = 0
puts "______________"
cart.each do |element|
puts "#{element[0]}: #{element[1]} X #{items[element[0]][:price]}€ = #{ element[1] * items[element[0]][:price]}€"
      #name        #quantity           #price                #compute the subtotal
# 5 Compute the bill of all the items
total = total + (element[1] * items[element[0]][:price])
end
puts "BILL: #{total}€"
puts "_____________"
