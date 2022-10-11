require "open-uri"
require "nokogiri"
require "pry-byebug"

# Let's scrape recipes from https://www.bbcgoodfood.com
# Let's get the title and price from worten.pt

puts "What do you want to search?"
item = gets.chomp

url = "https://www.bbcgoodfood.com/search/recipes?q=#{item}"
html_file = URI.open(url).read
p html_file.class
html_doc = Nokogiri::HTML(html_file)
p html_doc.class

title_array = []
html_doc.search(".standard-card-new__article-title").each do |element|
  title_array << element.text.strip
end

p title_array
