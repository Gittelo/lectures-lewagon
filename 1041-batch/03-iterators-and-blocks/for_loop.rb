# for loops to iterate
musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

# loop in the musicians array and print out all the names with there position before it
                       #4
for index in (0...musicians.length)
  puts "#{index + 1}----------#{musicians[index]}"
end
puts "________________________"
# loop in the musicians array and print out all the names with there position before it
counter = 0
for member in musicians
  puts "#{counter + 1}--Listen to #{member}"
  counter += 1
end
