age = nil

# everything else rather then false or nil is true
if age
# puts "this is a true condition!"
end


# voting age
#puts "What is your age?"
#age = gets.chomp.to_i
#if age > 17 #!(age < 18)
 # puts "you can vote!"
#else
 # puts "You can not vote!"
#end

# user picks a choice
puts "heads or tails?"
choice = gets.chomp

#p choice
# computer picks a choice
coin = ["heads", "tails"].sample

# based on both choices tell him if it i a loser or a winner
# condition ? code_when_truthy : code_when_falsey
result = choice == coin ? "winner" : "loser"
puts "#{result}, that was #{coin}"
