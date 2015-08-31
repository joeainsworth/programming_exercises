limit = 15

def fib(limit, first_num, second_num)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(15, 0, 1)
puts "result is #{result}"

