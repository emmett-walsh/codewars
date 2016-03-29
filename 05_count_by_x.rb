def count_by(x, n)
  array_to_return = []
  while n > 0 do
    array_to_return.push(x * n)
    n -= 1
  end
  array_to_return.reverse!
end

puts count_by(4,2)
# returns [x, 2x, 3x...x(n-1), xn]