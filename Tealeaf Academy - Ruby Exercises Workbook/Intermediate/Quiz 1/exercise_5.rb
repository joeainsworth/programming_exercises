def factors(number)
  dividend = number
  divisors = []
  begin
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end until dividend == 0
  divisors
end


def refactored(number)
  dividend = number
  divisors = []
  while dividend > 0 do
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  puts divisors.to_s
end



refactored(0)

# What is the purpose of the number % dividend == 0 ?
# The modulus operator performs a division and returns the remainder

# What is the purpose of the second-to-last line in the method (the divisors before the method's end)?
# This returns the array of the divisors
