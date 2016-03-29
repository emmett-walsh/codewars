def divisors(n)
  #your code here
  factors = []
  test_factor = 2

  return [2] if n == 2

  while test_factor < n do
    factors.push(test_factor) if n % test_factor == 0
    test_factor += 1
  end

  return factors == [] ? "#{n} is prime" : factors

end

puts divisors(2)
puts divisors(0)
puts divisors(30)