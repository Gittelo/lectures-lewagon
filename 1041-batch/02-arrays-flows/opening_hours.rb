# define the time
hour = Time.now.hour
# compare the time with the schedule and based on that say if it is onpen or close
if (hour > 8 && hour < 13) || (hour > 14 && hour < 19) 
  puts "we are open!"
else
  puts "sorry we are close!"
end
