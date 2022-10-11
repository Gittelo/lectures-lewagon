require "date"

def greetings(first_name, last_name)
  return "Hello bro #{first_name.capitalize} #{last_name.upcase}"
end


result = greetings("pedro", "telo")
puts result


def tomorrow
 date = Date.today
 day_t = date + 1
 return day_t.strftime("%b %d")
end

# puts day_t

puts tomorrow
