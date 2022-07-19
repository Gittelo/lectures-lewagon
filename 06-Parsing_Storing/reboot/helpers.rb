require "csv"
def list_items(gifts_list)
  gifts_list.each_with_index do |gift, index|
    #if gift[:bought]
    #  x = "X"
    #else
     # x = " "
    #end
    #puts "#{index + 1} - [#{x}]  #{gift[:name]} - #{gift[:price]}€"
    puts "#{index + 1} - [#{gift[:bought] ? "X" : " "}]  #{gift[:name]} - #{gift[:price]}€"
  end
end


def scrapping(idea)
  #3 compute the import (scraping)
  #3.1 pass the answer to the url
  url = "https://www.etsy.com/in-en/search?q=#{idea}"
  #3.2 convert the response to a nokogiri object
  html_content = URI.open(url).read
  doc = Nokogiri::HTML(html_content)
  results = []
  doc.search(".v2-listing-card__info").first(5).each do |element|
    title = element.search(".v2-listing-card__title").text.strip[0..30]
    price = element.search(".currency-value").text.to_i
    results << [title, price]
  end
  return results
end


def load
  gifts_list = []
  filepath = "data.csv"
  CSV.foreach(filepath, headers: :first_row) do |row|
    gifts_list << {name: row["name"], bought: row["bought"] == "true", price: row["price"].to_i}
  end
  return gifts_list
end

def save(gifts_list)
  filepath = "data.csv"
  CSV.open(filepath, 'wb') do |csv|
    csv << ["name", "bought", "price"]
    gifts_list.each do |gift|
      csv << [gift[:name], gift[:bought], gift[:price]]
    end
  end
end
