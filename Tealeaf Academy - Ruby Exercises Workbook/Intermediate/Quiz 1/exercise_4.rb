# What happens when we modify an array while we are iterating over it?
# What would be output by this code?
numbers = [1, 2, 3, 4]
numbers.each do |number|
  puts number
  numbers.shift(1)
end
# Above code will output 1 and 3

puts "-" * 10

numbers = [1, 2, 3, 4]
numbers.each do |number|
  puts number
  numbers.pop(1)
end
# Above code will output 1 and 2
