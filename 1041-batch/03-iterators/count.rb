musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

#counting the number of elments that start with an R
r_musicians_count = musicians.count do |musician|
 musician[0] == "R"
end

p r_musicians_count
