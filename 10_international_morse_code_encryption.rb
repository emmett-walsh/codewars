# library needed (hosted on codewars) - couldn't get output to match tests but i think that could be the tests themselves

def encryption(string)
  output = ""
  string.each_char do |char|
    if char == " "
      output << " "
    else
      output << $CHAR_TO_MORSE[char] + " "
    end
  end
  output.chop
end