#  TODO implement a Primes class with a class method first(n)
#  that returns an array of the first n prime numbers.
#  needs some serious refactoring


class Primes

  @prime_array = [2]

  def self.first(n)
    if @prime_array == [2]
      test = 3
    else
      test = @prime_array.last + 2
    end

    while @prime_array.length < n do
      if is_prime?(test)
        @prime_array.push(test)
      end
      test += 2
    end

    return @prime_array[0, n]

  end

  def self.is_prime?(num)
    return false if num <= 1

    if Math.sqrt(num).to_i.even?
      max = Math.sqrt(num).to_i + 1
    else
      max = Math.sqrt(num).to_i
    end

    unless @prime_array == [2]
      @prime_array.each do |prime|
        if prime <= max
          return false if (num % prime == 0)
        else
          return true
        end
      end

      start_value = @prime_array.last

      while start_value <= max
        return false if num % start_value == 0
        start_value += 2
      end
      return true
    end

    start_value = 3

    while start_value <= max
      return false if num % start_value == 0
      start_value += 2
    end
    return true

  end

end

#test = Primes.new(10)


print Primes.first(5)
puts
print Primes.first(10)
puts
print Primes.first(7)




=begin
class Item
  def self.show
    puts "Class method show invoked"
  end
end

Item.show

=end