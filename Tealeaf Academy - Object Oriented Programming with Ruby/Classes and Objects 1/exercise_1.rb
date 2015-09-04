# Create a class called MyCar. When you initialize a new instance or object
# of the class, allow the user to define some instance variables that tell us
# the year, color, and model of the car. Create an instance variable that is
# set to 0 during instantiation of the object to track the current current_speed of
# the car as well. Create instance methods that allow the car to current_speed up,
# brake, and shut the car off.

class MyCar
  attr_accessor :current_speed

  def initialize(year, colour, model)
    @year          = year
    @colour        = colour
    @model         = model
    @current_speed = 0
    puts "Nice, you have a #{year} #{model} in #{colour}!"
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
    puts "The car has been turned off!"
  end

  def current_speed
    puts "The car is now travelling at #{@current_speed} mph."
  end

end

super_car = MyCar.new(2015, "red", "Ferrari")
super_car.accelerate(100)
super_car.brake(50)
super_car.accelerate(20)
super_car.turn_off
super_car.current_speed
