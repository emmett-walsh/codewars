# Given an n x n array, return the array elements arranged from outermost elements to the middle element, traveling clockwise (like a snail shell!)

# The 0x0 (empty matrix) is represented as [[]]


def snail(array)

  array_size = array.length

  if array == [[]]
    return []
  end

  array_to_return = []

  while array.length > 1 do
# step 1 - copy out the "top" row of elements from the snail, and delete it
    array.delete_at(0).each { |element| array_to_return.push(element)}

# step 2 - pop the last elements of the remaining arrays, going down the "right side" of the snail
    array.each { |sub_array| array_to_return.push(sub_array.pop)}

# (need a break clause for 2 x 2 arrays)
    if array_size == 2
      array_to_return.push(array[0].pop)
    end

# step 3 - we now have an n-1 x n-1 sized array. time to capture the "bottom row" in reverse order
    array.delete_at(array.length - 1).reverse_each { |element| array_to_return.push(element)}

# step 4 - finally, we go back up the 'left side', removing and capturing the first elements of the remaining arrays
    array.reverse_each { |sub_array| array_to_return.push(sub_array.delete_at(0))}
  end

# final conditional to capture the element left over by odd sized arrays (3x3, 5x5 etc.)
  if array_size.odd?
    array_to_return.push(array[0].pop)
  end

  array_to_return

end

snail_array_odd = [[1,2,3,4,5], [16,17,18,19,6], [15,24,25,20,7], [14,23,22,21,8], [13,12,11,10,9]]
snail_array_even = [[1,2,3,4], [12,13,14,5], [11,16,15,6], [10,9,8,7]]
snail_array_2 = [[1,2], [4,3]]
snail_array_3 = [[1,2,3], [8, 9, 4], [7, 6, 5]]

print snail(snail_array_odd)
puts
print snail(snail_array_even)
puts
print snail(snail_array_2)
puts
print snail(snail_array_3)
puts
print snail([[]])

