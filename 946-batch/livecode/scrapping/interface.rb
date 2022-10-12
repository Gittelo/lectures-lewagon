require_relative "helper"

results = []
fetch_urls.each do |url|
  results << scrapping_each_movie(url)
end
file_path = "data.yaml"
File.open(file_path, 'wb') { |file| file.write(results.to_yaml) }
