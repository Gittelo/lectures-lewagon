require "csv"
require "byebug"

# TODO - let's read/write data from beatles.csv
filepath = "data/beatles.csv"

# counter = 0
results = []
#PARSING
CSV.foreach(filepath, headers: :first_row) do |row|
 #array << row #row is now a CSV:ROW object it behave like an Hash
  results << [row["First Name"], row["Last Name"], row["Instrument"]]
end

p results
#Delete the last one
#results.delete_at(-1)


p results
#STORING
CSV.open(filepath, "wb") do |csv|
  csv << ["First Name", "Last Name", "Instrument"]
 results.each do |result|
  csv << result
 end
end
