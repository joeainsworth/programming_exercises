def subtract(int)
  puts int
  if int > 0
    subtract((int -= 1))
  end
end

subtract(5)
