# You want to create a nice interface that allows you to accurately describe
# the action you want your program to perform. Create a method called
# spray_paint that can be called on an object and will modify the color
# of the car.

class MyCar
  attr_accessor :colour
  attr_reader   :year

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

  def spray_paint(colour)
    self.colour = colour
    "The car has been painted #{colour}"
  end

end

super_car = MyCar.new(2015, "red", "Ferrari")
super_car.accelerate(100)
super_car.brake(50)
super_car.accelerate(20)
super_car.turn_off
super_car.current_speed
super_car.colour = "yellow"
puts "Car colour is #{super_car.colour}"
puts "Car was made in #{super_car.year}"
puts super_car.spray_paint("blue")
