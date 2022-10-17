def greet(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.capitalize}"
  yield(full_name)
end


greet("dioGO", "telo") do |full_name|
 puts "Hi #{full_name}, welcome back!"
end

greet("dioGO", "telo") do |full_name|
  puts "Olá #{full_name}, bem vindo!"
 end
