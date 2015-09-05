# Which of these two classes has an instance variable and how do you know?

class Fruit
  def initialize(name)
    name = name
  end
end

class Pizza
  def initialize(name)
    @name = name
  end
end

# The Pizza class has an instance variable which is represteded with an @ symbol

juicy = Fruit.new("apple")
hot   = Pizza.new("pizza")

# Confirm this by instantiating objects above,
# then ask them if they have an instance variables

puts juicy.instance_variables
puts hot.instance_variables
