musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

# create a new array that will have just the musician that start with R letter
r_musicians = musicians.select do |musician|
  musician[0] == "R"
end

p r_musicians
