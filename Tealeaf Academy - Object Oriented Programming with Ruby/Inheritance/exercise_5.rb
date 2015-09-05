# Move all of the methods from the MyCar class that also pertain to the MyTruck
# class into the Vehicle class. Make sure that all of your previous method calls
# are working when you are finished.

module Trailer
  def cargo(type)
    "This truck is towing a trailer full of #{type}."
  end
end

class Vehicle
  attr_accessor :colour
  attr_reader   :year
  attr_reader   :model
  @@number_of_vehicles = 0

  def initialize(year, colour, model)
    @year          = year
    @colour        = colour
    @model         = model
    @current_speed = 0
    @@number_of_vehicles += 1
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

  def self.number_of_vehicles
    puts "You've created a total of #{@@number_of_vehicles} vehicles"
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
  include Trailer

  def to_s
    "Your truck is a #{self.colour} #{self.model} made in #{self.year}"
  end
end

car = MyCar.new('2010', 'silver', 'Ford Focus')
truck = MyTruck.new('2015', 'white', 'Volvo Lorry')

puts car
puts truck
puts truck.cargo("food")

Vehicle.number_of_vehicles

puts "\n"
puts "---MyCar Ancestors---"
puts MyCar.ancestors
puts "\n"
puts "---MyTruck Ancestors---"
puts MyTruck.ancestors
