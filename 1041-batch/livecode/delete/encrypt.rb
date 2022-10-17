def encrypt(sentence)
  alphabet = ("A".."Z").to_a
  new_sentence_array = sentence.upcase.split("").map do |letter|
      new_index = alphabet.find_index(letter)
      new_index.nil? ? letter : alphabet[new_index - 3]
  end
  return new_sentence_array.join
end


p encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
