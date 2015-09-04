# When running the following code...

class Person
  attr_accessor :name # changed to attr_accessor from attr_reader
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"

# We get the following error...
# test.rb:9:in `<main>': undefined method `name=' for
# <Person:0x007fef41838a28 @name="Steve"> (NoMethodError)
# Why do we get this error and how to we fix it?

# We get an error because attr_reader only creates a getter method.
# We are trying to rassign the name instance variable so we need a setter
# method. attr_reader must change to attr_accessor or attr_writer.
