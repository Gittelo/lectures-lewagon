require "date"

def days_until_christmas(year, month, day)
  today_date = Date.new(year, month, day)
  christmas_date = Date.new(year, 12, 25)
  if today_date > christmas_date
    christmas_date = Date.new(year + 1, 12, 25)
  end

  result = christmas_date - today_date
  return result.to_i
end

puts days_until_christmas(2024, 12, 23)
puts days_until_christmas(2030, 12, 23)
puts days_until_christmas(2030, 12, 29)
