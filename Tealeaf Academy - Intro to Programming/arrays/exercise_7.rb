original_arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_arr = []

original_arr.each do |num|
  new_arr.push(num + 2) # or new_arr << num + 2
end

puts original_arr
puts new_arr
