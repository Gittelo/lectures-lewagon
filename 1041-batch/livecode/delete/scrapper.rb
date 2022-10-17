require "open-uri"
require "nokogiri"
require "pry-byebug"

url = "https://www.imdb.com/chart/top"

html_file = URI.open(url).read
html_doc = Nokogiri::HTML(html_file)

results = []
html_doc.search(".titleColumn").first(5).each do |element|
  title = element.children[1].children.text
  director = element.children[1].attributes["title"].value.split(",").first.gsub(" (dir.)","")
  url = "https://www.imdb.com" + element.children[1].attributes["href"].value
  html_file = URI.open(url).read
  html_doc = Nokogiri::HTML(html_file)

  year =  html_doc.search(".sc-8c396aa2-2").first.children.text
  description = html_doc.search(".sc-16ede01-0").first.children.text
  all_cast = []
  html_doc.search('.ipc-metadata-list__item:contains("Stars") a.ipc-metadata-list-item__list-content-item--link').each do |element|
    cast = element.text
    all_cast << cast
  end

  results << {
    title: title,
    director: director,
    url: url,
    year: year,
    description: description,
    cast: all_cast.uniq
  }
end
p results
