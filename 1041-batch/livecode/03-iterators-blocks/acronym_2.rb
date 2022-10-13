# define a method with one parameter (string)
# separate the sentence into an array of words
# get the first letter of each word and create an array with them
# capitalize it
# combine the letters together
# return result!
def acronym(sentence)
  array = sentence.split
  array_letters = array.map do |word|
    word[0].capitalize
  end
  acronym = array_letters.join
  return acronym
end
