require "date"

def days_until_christmas(year, month, day)
  # set the chrimstas day
  christmas_eve = Date.new(year, 12, 24)
  # set the input date
  input_date = Date.new(year, month, day)
  # if the input date is bigger than the christmas date should increment year by one
  if input_date > christmas_eve
    christmas_eve = Date.new(year + 1, 12, 24)
  end
  # compute the diference between the two days
  result = christmas_eve - input_date
  # return the result
  return result.to_i
end

puts days_until_christmas(2022, 2, 1)

puts days_until_christmas(2022, 12, 27)
