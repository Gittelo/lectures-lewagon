students =     [ "Peter", "Mary", "George", "Emma", "Diogo" ]
student_ages = [ 24     , 25    , 22      ,  20    ]
                 #0       1        2          3


# puts "#{students[1]} has #{student_ages[1]}"

students.each_with_index do |student, index|
  age = student_ages[index]
  #puts "#{student} has #{age}"
end

index = 0
students.each do |student|
  age = student_ages[index]
  #puts "#{student} has #{age}"
  index += 1
end


student_ages = {
  "Peter" => 25,
  "Mary" => 23,
  "George" => 22,
  "Emma" => 10,
  "Diogo" => 28
}

#puts student_ages["Peter"] #=> 25

# CRUD - ARRAY
# Create:
student = []
students = [ "Peter", "Mary", "George", "Emma", "Diogo" ]
students << "Telo" #creating a new record!
# READ
students[1]
#Update
students[-1] = "John"
#Delete
students.delete_at(-1)

#HASH


#CRUD
#CREATE
paris = {
  "country" => "France",
  "population" => 2211000,
  "provancies" => ["provancy1", "provancy2"],
  "on_war" => false }
#p paris

paris["rivers"] = "Seine"

#p paris
#READ
paris["population"]
#UPDATE
paris["population"] = 2211100

#p paris
#paris["population"] += 100
#paris["rivers"] = "#{paris["rivers"]} is beautiful!"
#DELETE
paris["provancies"].delete("provanci2")
paris.delete("provancies")
#p paris
