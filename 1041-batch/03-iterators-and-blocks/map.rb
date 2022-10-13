musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

upcased_musicians = musicians.map do |musician|
  musician.upcase
end

#p upcased_musicians
#p musicians

# get a new array with the musians first name
first_names = musicians.map do |musician|
 musician.split.first
end
