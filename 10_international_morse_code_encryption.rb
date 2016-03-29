# library needed (hosted on codewars)

def encryption(string)
  output = ""
  string.each_char do |char|
    if char == " "
      output << "  "
    else
      output << $CHAR_TO_MORSE[char] + " "
    end
  end
  output.chop
end