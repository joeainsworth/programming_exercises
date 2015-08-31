def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub("number", "add_eight(number)") }

# 5 x add_eight(2) or 10

p eval(how_deep)
