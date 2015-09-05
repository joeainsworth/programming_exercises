# Given the following code...
#
# bob = Person.new
# bob.hi
# And the corresponding error message...
#
# NoMethodError: private method `hi' called for #<Person:0x007ff61dbb79f0>
# from (irb):8 from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'
# What is the problem and how would you go about fixing it?

class Person

  def initialize(name)
    @name = name
  end

  private

    def hi
      puts "Hello, #{@name}!"
    end

end

bob = Person.new("Bob")
bob.hi

# The hi method is private so it cannot be called from outside of the class and
# is unavailable to the object. To fix the problem move the hi method out of the
# private area of the class.
