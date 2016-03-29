def stringy(size)
  binary_string = ""
  i = 1
  while size > 0 do
    binary_string += (i.even? ? "0" : "1")
    i += 1
    size -= 1
  end
  binary_string
end

puts stringy(10)