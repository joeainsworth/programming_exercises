def titleize(my_string)
  my_string.split.map { |word| word.downcase.capitalize }.join(' ')
end

puts titleize("Surfing is my favourite sport")

