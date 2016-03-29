# createPhoneNumber(Array[1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"

def createPhoneNumber(numbers)
  #TODO

  phone_number = "("
  numbers.each do |digit|
    phone_number << digit.to_s
  end

  phone_number.insert(4, ") ")
  phone_number.insert(9, "-")

end

puts createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])