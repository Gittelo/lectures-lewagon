#CRUD
# Create
beatles = ["john", "ringo", "seb"]
            # 0     1          2
            # -3    -2      -1
empty_array = []
# Read
puts beatles[1]
puts beatles[-2]
# Update
p beatles
beatles[2] = "diogo"
p beatles
beatles << "telo"
beatles << "diogo"
beatles.insert(1, "castro")
#beatles.push("telo3")
p beatles
# Delete
beatles.delete_at(0)
beatles.delete("diogo")
p beatles

# Iterators
beatles.each_with_index do |beatle, index|
  capitalize_name = beatle.capitalize
  puts "#{index + 1} - Hi #{capitalize_name}"
end
