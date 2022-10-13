# Define the method encrypt, taking one parameter (a sentence)

def encrypt(sentence)
  alphabet = ("a".."z").to_a
  sentence_letters = sentence.downcase.split("")
  new_sentence_array = []
  sentence_letters.each do |letter|

    if letter != " "
      index_letter = alphabet.find_index(letter)
      new_sentence_array << alphabet[(index_letter - 3)]
    else
      new_sentence_array << " "
    end
  end
  encrypted_sentence = new_sentence_array.join
  return encrypted_sentence.upcase
end

puts encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")


# Make an array with all the letters of the alphabet, based in a range
# Make another array with the letters of the sentence
# Check the index of each letter of the sentence
# Subtract 3 to the original index
# Create the encrypted sentence
# Return the encrypted sentence
