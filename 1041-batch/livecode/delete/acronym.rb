def acroym(word_with_spaces)
  words_array = word_with_spaces.split(" ")
  acronomy = ""
  words_array.each do |word|
    acronomy << word[0]
  end

  return acronomy
end



p acroym("World Helth Organization")
