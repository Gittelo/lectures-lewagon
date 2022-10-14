# define a method to generate html tag: example:  <h1>Hello world</h1>
def tag(name, content, attr = {})
  # way to convert the hash into string with key='value' (for all the key value pairs)
  attr_array = attr.map { |key, value| " #{key}='#{value}'"}
  flaten_attr = attr_array.join
  # should return a string with the html format
  return "<#{name}#{flaten_attr}>#{content}</#{name}>"
end

puts tag("h1", "Hello World",  { class: "bold", style: "color: red;", href: "www.lewagon.org" })
puts tag("h1", "Hello World",  class: "bold", style: "color: red;", href: "www.lewagon.org" )
puts tag("h1", "Hello world")
#puts tag("Hello world")

      #string
def me(name)
  return "You are #{name}!"

end
        #hash
def you(attr)
  attr_array = attr.map { |key, value| " #{key}: #{value}"}
  flaten_attr = attr_array.join
  # return your attributes in a nice way
  return "You have #{flaten_attr}! But wait, veryyyyy cute #{attr[:eyes]} eyes"
end

puts you(eyes: "blue", hair: "blond", nose: "big")
