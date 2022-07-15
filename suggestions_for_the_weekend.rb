require "byebug"
students = [ [ "john", 28 ], [ "mary", 25 ], [ "paul", 21 ] ]

array_students = students.map do |student|
  {name: student[0], age: student[1]}
end

p array_students


#CRUD -> Array and Hash
#0 Do the Fashcards
#1 create and array, array of arrays, array of hashes, hashes of arrays
#2 CRUD
paris = {
  provancies: ["provency_1" , "provancy_2"],
  people: ["Peitro", "Joanna"]
}
#2 test the map and the each with arrays and hashes (create a file and run it)
#3 Do some exercises that were behind- don't worry about the yeild
