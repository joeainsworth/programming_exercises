# If we have this code:

class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

# What happens in each of the following cases:

# case 1:
hello = Hello.new
hello.hi                  # outputs "Hello"

# case 2:
hello = Hello.new
hello.bye                 # undefined method

# case 3:
hello = Hello.new         # missing argument
hello.greet

# case 4:
hello = Hello.new         # outputs "Goodbye"
hello.greet("Goodbye")

# case 5:
Hello.hi                  # undefined method - hi method is defined for
                          # instances of the Hello class rather than on the
                          # class itself
