# What is used in this class but doesn't add any value?

class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  def self.information
    return "I want to turn on the light with a brightness level of super
            high and a colour of green"
  end

end

# The return method doesn't need to be used in the information class method
# Ruby automatically returns the last line of a given method
