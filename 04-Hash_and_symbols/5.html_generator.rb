def tag(name, content, attributes = {})
  attr_array = []
  attributes.each do |key, value|
    attr_array << "#{key}=\"#{value}\""
  end
  #attr_array = attributes.map do |key, value|
  # "#{key}=\"#{value}\""
  #end

  return "<#{name} #{attr_array.join(" ")}>#{content}</#{name}>"
end


attr = {
  class: "btn-primary",
  id: "target"
}
puts tag("h1", "some title")
puts tag("h1", "some title", attr)
puts tag("h1", "some title", {class: "btn-primary", id: "target"})

attr2 = {
  class: "btn-primary",
  id: "target",
  style: "color: red"
}

puts tag("h1", "some title", attr2)


def tag2(attr = {}, attr2 = {})
  return "Just for test"
end

puts tag2({id: 1, name: "telo"},country: "portugal", city:"Lisbon")
