# greet the user with there full name
def greet(first_name, last_name)
 full_name = "#{first_name.capitalize} #{last_name.capitalize}"
 yield(full_name)
end

def greet_2(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.capitalize}"
  upcased_name = full_name.upcase
  yield(upcased_name)
end

#puts greet("diogo", "tELO")


message = greet("diogo", "tElO") do |fn|
  "Olá #{fn}!"
end

p message

message = greet("diogo", "tElO") do |full_name|
  "Bonjure #{full_name}!"
end

p message

message = greet("diogo", "tElO") do |full_name|
  "Hei #{full_name}!"
end

p message


message = greet_2("PedRO", "tElO") do |name|
  "Boas #{name}!"
end

p message
