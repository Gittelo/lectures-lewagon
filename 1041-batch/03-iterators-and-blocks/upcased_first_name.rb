musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

# create the array eith the first name
upcased_first_names = musicians.map do |musician|
 #get the first name of the musician
 first_name = musician.split.first
 puts "debug - #{first_name}"
 upcased_name = first_name.upcase

 upcased_name
end

p upcased_first_names
