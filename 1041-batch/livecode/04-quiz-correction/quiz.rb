grades = [19, 8, 11, 15, 13]

# get the grades array size
size = grades.size #.length .count
# sum the numbers of the grades array
# grades.sum
sum = 0
grades.each do |grade|
  sum = sum + grade # sum += grade
end
# devide the sum of the grades by the grades array
average = sum.to_f / size


def fullname(first_name, last_name)
 full_name = first_name.capitalize + " " + last_name.capitalize
 #full_name = "#{first_name.capitalize} #{last_name.capitalize}"
 return full_name
end

puts fullname("dioGO","teLO")


number = "5" + "6" #concatenation
"#{56}" #interpolation
p number
number = 5 + 6
"#{5 + 6}"
p number


fruits = ["banana", "peach", "watermelon", "orange"]

# Print out "peach" from the fruits array in the terminal
fruits[1]
# Add an "apple" to the fruits array
fruits << "apple"
# fruits.push("apple")
# fruits.append("apple")

# Replace "watermelon" by "pear"
fruits[2] = "pear"

# Delete "orange"
fruits.delete("orange")
fruits.delete_at(3)


city = { name: "Paris", population: 2000000 }

# Print out the name of the city
puts city[:name]

# Add the Eiffel Tower to city with the `:monument` key
city[:monument] = "Eiffel Tower"

# Update the population to 2000001
city[:population] = 20000001

# What will the following code return?
city[:mayor] #=> nil


students = [ [ "john", 28 ], [ "mary", 25 ], [ "paul", 21 ] ]

# TODO: Convert the array of arrays into an array of hashes.
new_students_array = []
students.each do |student_group|
  name = student_group[0]
  age = student_group[1]
  new_students_array << {name: name, age: age}
end

p new_students_array

new_students_array = students.map { |student|  {name: student[0], age: student[1]} }
