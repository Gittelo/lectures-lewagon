require "open-uri"
require "nokogiri"
require "pry-byebug"
require 'yaml'

# get the top url with all the movies
url = "https://www.imdb.com/chart/top"

html_file = URI.open(url).read
html_doc = Nokogiri::HTML(html_file)

results = []
# get the first 5 results titles and hrefs
html_doc.search(".titleColumn").first(5).each do |element|
  title = element.children[1].text
  director = element.children[1].attributes["title"].value.split(",")[0].gsub(" (dir.)","")
  href =  element.children[1].attributes["href"].value
  # enter in each one of the movie page extract description, cast, director, year!
  url2 = "https://www.imdb.com#{href}"
  html_file2 = URI.open(url2).read
  html_doc2 = Nokogiri::HTML(html_file2)
  html_doc2.search(".sc-8c396aa2-2").first
  year = html_doc2.search(".sc-8c396aa2-2").first.text
  description = html_doc2.search(".sc-16ede01-0").first.text

  cast1 = html_doc2.search(".ipc-metadata-list-item__list-content-item--link")[3].text
  cast2 = html_doc2.search(".ipc-metadata-list-item__list-content-item--link")[4].text
  cast3 = html_doc2.search(".ipc-metadata-list-item__list-content-item--link")[5].text
  cast = [cast1, cast2, cast3]
  # save it in the hash
  results << {title: title, director: director, year: year, description: description, cast: cast}
end

p results
file_path = "results.yml"
File.open(file_path, "wb") { |file| file.write(results.to_yaml) }

# save the hash in the yaml
