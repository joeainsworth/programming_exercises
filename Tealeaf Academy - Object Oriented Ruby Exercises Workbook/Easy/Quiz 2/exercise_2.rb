# We have an Oracle class and a RoadTrip class that inherits from the Oracle
# class.

class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

class RoadTrip < Oracle
  def choices
    ["visit Vegas", "fly to Fiji", "romp in Rome"]
  end
end

# What is the result of the following:

trip = RoadTrip.new
puts trip.predict_the_future

# Instantiate a new RoadTrip object that inherits from the Oracle superclass
# Trip variable calles the predict_the_future_method
# Instead of inheriting the choices method the trip objects own method overrides
# When Ruby tries to resolve a method name it will start with the methods
# defined in the calling class
