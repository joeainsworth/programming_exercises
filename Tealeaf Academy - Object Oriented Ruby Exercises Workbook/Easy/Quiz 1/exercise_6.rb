# What could we add to the class below to access the instance variable @volume?

class Cube
  attr_reader :volume

  def initialize(volume)
    @volume = volume
  end

  def get_volume
    @volume
  end
end

big = Cube.new(100)
puts big.get_volume

# OR the class needs an attribute reader for the volume instance variable,
# this allows it to be accessed outside of the class.
# Methods with a get_ prefix are avoided in Ruby community.
