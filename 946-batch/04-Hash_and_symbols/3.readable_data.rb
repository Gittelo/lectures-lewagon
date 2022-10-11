cities = [ ["London", "England", "Big Ben"], ["Paris", "France", "Tour Eiffel"] ]
puts cities[1][2]

cities = {
  "London" => { "country" => "England",
                "monument" => "Big Ben" },
  "Paris" => { "country" => "France",
               "monument" => "Tour Eiffel" }
}

puts cities["Paris"]["monument"]
