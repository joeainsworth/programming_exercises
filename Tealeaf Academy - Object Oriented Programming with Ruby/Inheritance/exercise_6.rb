# Write a method called age that calls a private method to calculate the age of
# the vehicle. Make sure the private method is not available from outside of the
# class. You'll need to use Ruby's built-in Time class to help.

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

  def age
    "Your #{self.model} is #{vehicle_age} years old"
  end

  private

    def vehicle_age
      Time.now.year - self.year.to_i
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
puts "\n"

puts car.age
