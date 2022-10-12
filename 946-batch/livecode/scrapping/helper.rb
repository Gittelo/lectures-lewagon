require 'open-uri'
require 'nokogiri'
require "pry-byebug"

def fetch_urls
  url = "https://www.imdb.com/chart/top"
  html_content = URI.open(url).read
  doc = Nokogiri::HTML(html_content)
  urls = []
  doc.search(".titleColumn").first(5).each do |element|
    urls << "https://www.imdb.com#{element.children[1].attributes["href"].value}"
  end
  return urls
end

def scrapping_each_movie(url)
  html_content = URI.open(url).read
  doc = Nokogiri::HTML(html_content)
  result = {}
  doc.search(".sc-94726ce4-2").each do |element|
    title = element.search(".sc-b73cd867-0").first.text
    binding.pry
    year = element.search(".sc-8c396aa2-2").children.first.text
    result[:title] = title
    result[:year] = year
  end

return result
# should return an hash =>   {title: "The Shawshank Redemption", year: 1994}
end
