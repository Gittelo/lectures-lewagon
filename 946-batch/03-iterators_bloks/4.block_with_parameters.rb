def greet(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.upcase}"
  first_name = first_name.capitalize
  yield(full_name, first_name)

  puts "You don't know but it's frist name is not #{first_name}"
end

#puts greet('john', 'lennon')

greet('john', 'lennon') do |name, fn|
  puts "Hi bro #{name} how are you? bro #{fn}?"
end

#greet('john', 'lennon') do |name|
#  puts "Olá #{name} como estás?"
#end

#greet('john', 'lennon') do |name|
#  puts "HI #{name}!"
#end

puts "love my day!"
