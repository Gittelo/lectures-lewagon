# ARRAYS
# CRUD
# CREATE
empty_array = []
array = ["john", "ringo", "seb"]
          #0    ,  #1   , #2
          #-3   ,      -2    ,   -1
# READ
puts array[0]
puts array[-3]
puts array[-1] # get the last element of the array
# UPDATE
p array
# update the position 1
array[1] = "george"
# append in the end
array << "telo"
array.push("telo")
# insert in a specific position
array.insert(1, "diogo")
# update more than one at the time
array[1,2] = ["george", "telo"]
p array
# DELETE
# delete a specific value - ALL OF THEM
array.delete("seb")
p array
# delete a specific index
array.delete_at(0)
p array
