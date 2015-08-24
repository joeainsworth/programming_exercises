numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
odd_numbers = []

numbers.each { |num| odd_numbers.push(num) if num.odd? } # or use num % 2 != 0

puts odd_numbers
