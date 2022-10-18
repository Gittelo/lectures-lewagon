require "json"
require "open-uri"

# TODO - Let's fetch name and bio from a given GitHub username
puts "Give me your github name:"
github = gets.chomp

url = "https://api.github.com/users/#{github}"
user_serialized = URI.open(url).read
user = JSON.parse(user_serialized)

p user
