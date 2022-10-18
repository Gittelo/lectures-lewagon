# define a method that takes in a parameter which can be a string
# define the expression that makes the credit card valid
# check if the card is valid
# return message according to the result

def card_validator(card_number)
  #\d{4}\s?\d{4}\s?\d{4}\s?\d{4}
  if card_number.match?(/(\d{4}\s?){4}/)
    return "Valid card!"
  else
    return "Invalid card!"
  end
end
