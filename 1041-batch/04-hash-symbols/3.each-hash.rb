paris = {
  "country" => "France",
  "population" => 2211000
}

paris.values.each do |element|
  p element # element is going to be an array
end

paris.each do |key, value|
 p "#{key}=#{value}"  # we can use
end
