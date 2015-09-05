# What is the default thing that Ruby will print to the screen if you call to_s
# on an object? Where could you go to find out if you want to be sure?

class Person
  def initialize(n)
    @name = n
  end
end

joe = Person.new("Joe")
puts joe.to_s

# Ruby prints the objects class and the object ID
