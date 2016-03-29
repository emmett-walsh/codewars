=begin

You are given a 2D array, composed of a colour and its 'common' association in each array element. The function you will write needs to return the colour as 'key' and association as its 'value'.

For example:

array = ["white", "goodness"] #returns {'white'=>'goodness'}
=end

def colour_association(arr)

  output_array = []
  arr.each do |pair|
    colour_hash = {pair[0] =>  pair[1]}
    output_array.push(colour_hash)
  end
  return output_array
end

puts colour_association([["white", "goodness"], ["blue", "tranquility"]])
