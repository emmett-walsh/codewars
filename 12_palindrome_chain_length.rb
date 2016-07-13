# first need a "palindrome_test"

def palindrome_chain_length(n)
  steps = 0

  while n.to_s != n.to_s.reverse  do
    n += n.to_s.reverse.to_i
    steps += 1
  end
  return steps

end

print palindrome_chain_length(109)