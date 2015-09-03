# What is a module? What is its purpose? How do we use them with our classes?
# Create a module for the class you created in exercise 1 and include it
# properly.

module noise
  def talks(words)
    puts "#{words}"
  end

  def shouts(words)
    puts "#{words}.upcase"
  end
end

class Person
  include noise
end

Joe = person.new
