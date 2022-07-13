hour = 23
puts "this is the time now: #{hour}"

if hour < 12
  puts "Good morning!"
elsif hour >= 20
  puts "Good night!"
elsif hour > 12
#elsif hour > 12 && hour < 20
  puts "Good afternoon!"
else
  puts "Lunch time!"
end
