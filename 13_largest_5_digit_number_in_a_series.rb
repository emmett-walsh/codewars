# return largest five digit number from a string

def solution(digits)
  answer = 0
  i = 0

  while i <= digits.to_s.length do
    answer = digits.to_s[i,5].to_i if digits.to_s[i,5].to_i > answer
    i += 1
  end

  return answer

end

puts solution(458959)