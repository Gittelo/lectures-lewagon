require "json"
require "open-uri"

# TODO - Let's fetch name and bio from a given GitHub username
puts "What is your guthub name?"
name = gets.chomp

url = "https://api.github.com/users/#{name}"
user_serialized = URI.open(url).read
user = JSON.parse(user_serialized)

p user
