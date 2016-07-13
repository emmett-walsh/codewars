def next_bigger(n)
  return -1 if n <= 11

  next_smallest = n
  number_string = n.to_s
  test_number_string = n.to_s

  test_number_string[-1] = n.to_s[-2]
  test_number_string[-2] = n.to_s[-1]

  next_smaller = test_number_string.to_i if ((test_number_string.to_i > n) && (test_number_string < next_smallest))

  if next_smallest <= n
    return -1
  else
    return next_smallest
  end

end

puts next_bigger 108