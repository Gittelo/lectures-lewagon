require "csv"

# TODO - let's read/write data from beatles.csv
filepath = "data/beatles.csv"

musicians = []

# parsing from the csv into the ruby world. creating a musicians array
CSV.foreach(filepath, headers: :first_row) do |row|
  musicians << [row["First Name"], row["Last Name"], row["Instrument"]]
end

# playing around with the musician array by addding a new record
musicians << ["Diogo", "Telo", "Drums"]

# storing from the ruby world into a csv
CSV.open(filepath, "wb") do |csv|
  csv << ["First Name", "Last Name", "Instrument"]
  musicians.each do |musician|
    csv << musician
  end
end
