=begin
# Categories to do:
(done) strings
variables
(done) methods
(done) booleans
(done) arrays
(done) control flows
symbols
hashes
blocks
lambdas
procs
recursion
=end

array1 = []
".... . .-.. .-.. ---  .-- --- .-. .-.. -..".each_char { |char| array1.push(char.ord)}
print array1
puts

array2 = []
".... . .-.. .-.. ---  .-- --- .-. .-.. -..".each_char { |char| array2.push(char.ord)}
print array2
puts

if array1 == array2
  puts true
else
  puts false
end