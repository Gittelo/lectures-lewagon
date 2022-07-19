require "pry-byebug"
require "nokogiri"
require "open-uri"
require_relative "helpers"

# Welcoming the user
puts "Welcome to the Xmas gift list :D"
# Defining the gift list
#gifts_list = ["bike", "ps5", "car"]

#Option2 - array of hashes
gifts_list = load
run = true
# To preform the action acording to the choice
while run
  # Ask the user the action that they want to preform
  puts "What action do you want to preform? [list | add | delete | mark | idea | quit]"
  action = gets.chomp
  case action
  when "list"
    #iterate over the gift_list array
    list_items(gifts_list)
  when "add"
    #ask item do you want to add
    puts "What item do you want to add bro/a?"
    #get the answer from the user
    new_item = gets.chomp
    puts "What is the price?"
    new_price = gets.chomp.to_i
    #add the item to the gifts_list
    gifts_list << {name: new_item, bought: false, price: new_price}
    # present the list again
    list_items(gifts_list)
    save(gifts_list)
  when "delete"
    #ask the question
    list_items(gifts_list)
    puts "What item do you want to delete? [select a number]"
    #get the answer of the choosen item (picks the number)
    item_index = gets.chomp.to_i - 1
    #delete the item on the gifts_list
    gifts_list.delete_at(item_index)
    save(gifts_list)

  when "mark"
    #display the list of items
    list_items(gifts_list)
    #ask which one you want to mark [index]
    puts "What item do you want to mark as bought? [number]"
    #get the answer form the user
    index = gets.chomp.to_i - 1
    #update the value from false to true
    gifts_list[index][:bought] = true
     #display the list of items
     list_items(gifts_list)
     save(gifts_list)

  when "idea"
    #1 ask the user what is he looking for
    puts "What do you want to find on Etsy?"
    #2 get the answer from the user
    idea = gets.chomp
    results = scrapping(idea)
    # print the results
    results.each_with_index do |result, index|
      puts "#{index + 1}-#{result[0]} - #{result[1]}€"
    end
    # tell the user to choose one of them
    puts "Please select one to import to your list: [number]"
    index = gets.chomp.to_i - 1
    # save it in our gifts_list
    gifts_list << {name: results[index][0], bought: false, price: results[index][1]}
    list_items(gifts_list)
    save(gifts_list)
  when "quit"
    puts "Goodbay"
    run = false
  else
    puts "That is not an option"
  end
end
