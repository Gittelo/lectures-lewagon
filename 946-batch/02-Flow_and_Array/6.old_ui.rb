puts "What do  you want to do: [read | write | exit]"
input = gets.chomp

=begin
if input == "read"
 puts "We are reading you something..."
elsif input == "write"
 puts "We are writing something.."
elsif input == "exit"
  puts "Goodbye!"
else
  puts "It is not an option!"
end
=end

case input
when "read"
  puts "We are reading you something..."
when "write"
  puts "We are writing something.."
when "exit"
  puts "Goodbye!"
else
  puts "It is not an option!"
end
