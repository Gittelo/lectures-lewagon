def tag(name, content, attr = {})
  flat_attributes = attr.map { |key, value| " #{key}='#{value}'"}.join
  "<#{name}#{flat_attributes}>#{content}</#{name}>"
end

p tag("h1", "Hello world")
# => <h1>Hello world</h1>

p tag("h1", "Hello world", class: "bold" )
# => <h1 class='bold'>Hello world</h1>

p tag("a", "Le Wagon", href: "http://lewagon.org", class: "btn" )
# => <a href='http://lewagon.org' class='btn'>Le Wagon</a>


paris = {
  country: "France",
  population: 2211000
}
paris[:country]
