require "open-uri"
require "nokogiri"
require "pry-byebug"

# Let's scrape recipes from https://www.bbcgoodfood.com
ingredient= "chocolate"
url = "https://www.bbcgoodfood.com/search?q=#{ingredient}"

 # keyword to stop my code

html_file = URI.open(url).read
html_doc = Nokogiri::HTML(html_file)

all_titles = []
html_doc.search(".standard-card-new__article-title").first(5).each do |element|
  title = element.text.strip
  all_titles << title
end

p all_titles
