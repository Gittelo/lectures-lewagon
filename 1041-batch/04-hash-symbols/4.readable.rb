cities = [ ["London", "England", "Big Ben"], ["Paris", "France", "Tour Eiffel"] ]

p cities[0]
p cities[0][2]


cities = {
  "London" => { "country" => "England", "monument" => "Big Ben" },
  "Paris" => { "country" => "France", "monument" => "Tour Eiffel" }
}

cities = {
  "London" => ["soho", "chealse" ]
  "Paris" => [2, 75]
}

# update the value 75
cities["Paris"][1] = 46

# print the array of london areas to a string
cities["London"].join(" ")
   # array         
   
p cities["London"]
p cities["London"]["monument"]
