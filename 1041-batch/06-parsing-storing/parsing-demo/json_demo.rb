require "json"

# TODO - let's read/write data from beatles.json
filepath = "data/beatles.json"

# parsing the json to the ruby world. creating a hash
serialized_beatles = File.read(filepath)
beatles = JSON.parse(serialized_beatles)

# play around with our hash
beatles["beatles"].delete_at(-1)

# store the hash in the json file. 
File.open(filepath, "wb") do |file|
  file.write(JSON.generate(beatles))
end
