# Create a superclass called Vehicle for your MyCar class to inherit from and
# move the behavior that isn't specific to the MyCar class to the superclass.
# Create a constant in your MyCar class that stores information about the
# vehicle that makes it different from other types of Vehicles.
#
# Then create a new class called MyTruck that inherits from your superclass
# that also has a constant defined that separates it from the MyCar class in
# some way.

class Vehicle
  def self.gas_milage(distance, gallons)
    puts "#{gallons / distance} miles per gallon of gas"
  end

  attr_accessor :colour
  attr_reader   :year
  attr_reader   :model

  def initialize(year, colour, model)
    @year          = year
    @colour        = colour
    @model         = model
    @current_speed = 0
  end

  def accelerate(speed)
    @current_speed += speed
    current_speed
  end

  def brake(speed)
    @current_speed -= speed
    current_speed
  end

  def turn_off
    @current_speed = 0
    puts "You have turned off the ignition!"
  end

  def current_speed
    puts "You are now travelling at #{@current_speed} mph."
  end

  def spray_paint(colour)
    self.colour = colour
    "You have painted the vehicle #{colour}"
  end

  def self.gas_milage(distance, gallons)
    puts "#{gallons / distance} miles per gallon of gas"
  end

end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def to_s
    "Your car is a #{self.colour} #{self.model} made in #{self.year}"
  end
end


class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2

  def to_s
    "Your truck is a #{self.colour} #{self.model} made in #{self.year}"
  end
end

car = MyCar.new('2010', 'silver', 'Ford Focus')
truck = MyCar.new('2015', 'white', 'VW Transporter')

puts car
puts truck
