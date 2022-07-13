def create_acronym(full_name)
  #split each word and store it in a array of words
  words = full_name.split
  #itraite over the array and get the first letter
  array_letters =[]
  #string = ""
  words.each do |word|
    letter = word[0].capitalize
    array_letters << letter
  end
  ## join togater in a string of first letters
  return array_letters.join
end

puts create_acronym("North atlantic Treaty Organization") #=> NATO
