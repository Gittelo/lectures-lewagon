#require "byebug"
require "pry-byebug"

def full_name(array)
  #byebug
  binding.pry
  new_array = []
  array.each do |name|
    new_array << name[0]
    binding.pry
  end

  binding.pry


 # return "#{first_name.capitalize} #{last_name.capitalize}"
end


array = ["diogo", "telo"]
full_name(array)
binding.pry
a = 2
