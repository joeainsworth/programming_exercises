# How could the unnecessary duplication in this method be removed?

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

# Change method to

def color_valid(color)
  color == "blue" || color == "green"
end
