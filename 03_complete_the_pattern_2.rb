def pattern(n)
  # Happy Coding ^_^
  return "" if n < 1
  return "1" if n == 1

  string = ""
  string_to_return = ""

  while n > 0 do
    string << n.to_s
    n -= 1
  end

i = 0

  while i.to_s.length <= string.length do
    string_to_return << string + "\n"
    i += 1
    string.chomp!(i.to_s)
  end

 string_to_return.rstrip

end
