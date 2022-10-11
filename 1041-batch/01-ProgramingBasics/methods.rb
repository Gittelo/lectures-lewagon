# Option 1:
# puts "Hi John."
# puts "Hi Paul."
# puts "Hi Ringo."

def greetings(first_name, last_name)
  # return in the method
  return "Hello bro #{first_name.capitalize} #{last_name.upcase}"
end

greeting_name = "diogo"
last_greeting_name = "telo"
# print the method
puts greetings(greeting_name, last_greeting_name)
