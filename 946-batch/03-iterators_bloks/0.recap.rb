
# CRUD
# Create
musicians = []
musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']
                #0               #1             #2                #3
                #-4              #-3           #-2                #-1
letters = ("a".."h").to_a
# Read
puts musicians[1]
p musicians
# Update
musicians << "Dadid Guetta"
#musicians.push("Dadid Guetta")
musicians.insert(1, "Mike Dj")
musicians[0] = "Led Zapplin"
#p musicians

# Delete
musicians.delete("Mike Dj")
musicians.delete_at(0)
p musicians

# call methods on arrays
musicians.size

# Range
p (0..10).class
