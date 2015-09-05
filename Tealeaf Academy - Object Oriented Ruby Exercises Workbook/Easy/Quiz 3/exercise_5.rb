# If I have the following class:

class Television
  def self.manufacturer
    # method logic
  end

  def model
    # method logic
  end
end

# What would happen if I called the methods like shown below?

tv = Television.new       # instantiate a new Televesion object and assign to tv
tv.manufacturer           # error
tv.model                  # calls the model method within the Television class

Television.manufacturer   # Calls the class method manufacturer
Television.model          # error because model is not a class method
