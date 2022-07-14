def encrypt(sentence)
  #create an array of letters - alfabet
  alfabet = ("A".."Z").to_a
  #create an array of letters and spaces from the sentence
  array_of_letters = sentence.chars
  #loop upon the array of letters of the sentence
  result_letters = array_of_letters.map do |char|
    #change each letter by 3 letters before
    if char == " "
      char
    else
      index_of_the_chr_in_the_alfabet = alfabet.find_index(char)
      alfabet[index_of_the_chr_in_the_alfabet - 3]
    end
  end
  result_letters.join
  #return the changed sentence
end






puts encrypt("DIOGO TELO")
# => "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
