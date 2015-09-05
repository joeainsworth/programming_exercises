# If we have a class such as the one below:

class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

# Explain what the @@cats_count variable does and how it works.
# The variable keeps count of the amount of Cat objects instantiated. Each time
# a new Cat object is created the initialize method increments the variable by 1
# What code would you need to write to test your theory?

whiskers = Cat.new("Fury")
paws     = Cat.new("Smooth")

puts Cat.cats_count

# The above code instantiates two cats and the class method prints the variable
