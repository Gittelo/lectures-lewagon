#CRUD of a Hash
#Create
paris = {}
paris = {
  "country" => "France",
  "population" => 2211000
}


#Read
 paris["country"]  # => "France"
  paris["population"]  # => 2211000

#Update
paris["country"] = "Portugal"
paris["monument"] = "Eiffel tower" #ADD a new record to the hash

  # Note: They way that it worrks is that: 1st is going to find that specific key
  # if it finds it updates the record else it creates a new key value pair!

#Delete
paris.delete("monument")
