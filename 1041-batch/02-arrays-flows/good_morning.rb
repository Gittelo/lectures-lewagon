# define a time
hour = 3
# based on the time print good morning, good afternoon or good night

if  hour >= 20 || hour < 6
  puts "Good night"
elsif hour > 12
  puts "Good afternoon!"
elsif hour < 12 
  puts "Good morning!"
else
  puts "Lunch time!"
end
