# Add an accessor method to your MyCar class to change and view the color of
# your car. Then add an accessor method that allows you to view, but not
# modify, the year of your car.

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

end

super_car = MyCar.new(2015, "red", "Ferrari")
super_car.accelerate(100)
super_car.brake(50)
super_car.accelerate(20)
super_car.turn_off
super_car.current_speed
super_car.colour = "Yellow"
puts "Car colour is #{super_car.colour}"
puts "Car was made in #{super_car.year}"
