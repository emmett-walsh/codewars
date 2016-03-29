def digitize(n)
  array = n.to_s.split("").reverse
  array_to_return = []
  array.each { |element| array_to_return.push(element.to_i)}
  array_to_return
end

puts digitize(12345)