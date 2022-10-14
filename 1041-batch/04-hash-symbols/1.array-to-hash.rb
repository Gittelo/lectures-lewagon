students =     [ "Peter", "Mary", "George", "Emma" ]
student_ages = [ 24     , 25    , 22      ,  20    ]

# present the student name and it's age
students.each_with_index do |student, index|
  puts "name: #{student} -> age: #{student_ages[index]}"
end
