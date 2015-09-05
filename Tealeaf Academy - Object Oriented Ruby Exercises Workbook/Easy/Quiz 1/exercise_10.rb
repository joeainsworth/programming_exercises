# If we have the class below, what would you need to call to create a new
# instance of this class

class Bag
  def initialize(colour, material)
    @colour   = colour
    @material = material
  end
end

# Need to call two arguments to create a new object

gucci = Bag.new("grey", "leather")
