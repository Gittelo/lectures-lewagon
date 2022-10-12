def acronym(sentence)
  # separate the words of the sentence
  words_array = sentence.split
  array = []
  words_array.each do |word|
    # select the first letter of each word
    # upcase the word
    letter = word[0].upcase
    # we build the acronym
    array << letter
  end
  
  acronym = array.join
  # returning the acronym
  return acronym
end

puts acronym("world space association") #=> WHO
