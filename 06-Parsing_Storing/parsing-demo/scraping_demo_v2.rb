require "open-uri"
require "nokogiri"
require "pry-byebug"

# Let's scrape recipes from https://www.bbcgoodfood.com
# Let's get the title and price from worten.pt

puts "What do you want to search?"
item = gets.chomp

url = "https://www.worten.pt/search?query=#{item}"

html_file = URI.open(url).read
html_doc = Nokogiri::HTML(html_file)

html_doc.search(".w-product__wrapper").each do |element|
 p element
end
