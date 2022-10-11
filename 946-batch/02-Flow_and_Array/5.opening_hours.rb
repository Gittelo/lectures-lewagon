hour = 19

if (hour >= 9 && hour <= 12) || (hour >= 14 && hour <= 20)
    # false       # false          #true         # true
            #false                        #true
                             #true
  puts "It is open"
else
  puts "It is close"
end
