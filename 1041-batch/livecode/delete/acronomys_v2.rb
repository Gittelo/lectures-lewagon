def acronomys_v2(sentence)
  # split the words
  # pick up the first letter
  # upcase it
 first_letters = sentence.split.map do |word|
  word[0].upcase
 end
 return first_letters.join
end


p acronomys_v2("world helth organization")
