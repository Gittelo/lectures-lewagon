# ask what do you want to do? and present the options
puts "What do you want to do? [read | write | exit]"
action = gets.chomp.downcase
#based on the options act accordingly

case action
when "read" # action == "read"
  puts "You are in the READ mode"
when "write"
  puts "you are in the WRITE mode"
when "exit"
  puts "Bye"
else
 puts "that is not an option!"
end
