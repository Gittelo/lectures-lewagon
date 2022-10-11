require "json"

# TODO - let's read/write data from beatles.json
filepath = "data/beatles.json"

#PARSING
serialized_beatles = File.read(filepath)
beatles = JSON.parse(serialized_beatles)

#p beatles

# ADD a new record
beatles["beatles"] << {"first_name" => "Diogo", "last_name" => "Telo", "instrument" => "Drums"}

#p beatles

# STORING
File.open(filepath, "wb") do |file|
  file.write(JSON.generate(beatles))
                            # hash
end
