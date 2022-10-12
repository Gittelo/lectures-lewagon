def acronym_creation(extended_name)
  #array_words = extended_name.split
  #letters = array_words.map do |word|
  #  word[0].capitalize
  #end
  #letters.join
  extended_name.split.map { |word| word[0].capitalize }.join
end

puts acronym_creation("North Atlantic Treaty Organization")
#=> NATO
