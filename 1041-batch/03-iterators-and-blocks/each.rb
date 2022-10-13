musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

musicians.each do |musician|
 puts "Listening to #{musician}"
end

puts "______________"

musicians.each_with_index do |musician, index|
 puts "#{index + 1} -- #{musician}"
end
