# Programmatically determine if 42 lies between 10 and 100.

range = Range.new(0,100)
range.cover?(42) # if in theory the value is between the range
range.member?(42) # same as include
range.include?(42) # if the value is actually within the range
