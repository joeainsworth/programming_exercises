words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}

# 1. iterate over the words array and for each word:
# turn it in to alphabetical order
# compare word to each word in array
# if word exists prepend to words array

words.each do |word|
  key = word.chars.sort.join

  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end

end

result.each do |k,v|
  puts "-" * 5
  puts v
end
