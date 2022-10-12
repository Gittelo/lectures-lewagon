array = ["john", "ringo", "seb"]

array.each_with_index do |element, index|
  puts "#{index + 1} - #{element.capitalize}"
end
