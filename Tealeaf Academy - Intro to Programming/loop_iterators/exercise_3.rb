cars = %w[Polo Golf Beetle Scirocco]

cars.each_with_index { |item, index|
  puts "#{index + 1}, #{item}"
}
