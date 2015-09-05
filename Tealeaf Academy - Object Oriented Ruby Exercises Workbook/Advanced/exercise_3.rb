# Ben and Alyssa are working on a vehicle management system. So far, they have
# created classes called Auto and Motorcycle to represent automobiles and
# motorcycles. After having noticed common information and calculations
# they were performing for each type of vehicle, they decided to break out the
# commonality into a separate class called WheeledVehicle. This is what their
# code looks like so far:
module Fuel
  attr_accessor :speed, :heading
  attr_writer :fuel_capacity, :fuel_efficiency

  def range
    @fuel_capacity * @fuel_efficiency
  end
end

class WheeledVehicle
  include Fuel

  def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
    @tires                = tire_array
    self.fuel_efficiency  = km_traveled_per_liter
    self.fuel_capacity    = liters_of_fuel_capacity
  end

  def tire_pressoure(tire_index)
    @tires[tire_index]
  end

  def inflate_tire(tire_index, pressure)
    @tires[tire_index] = pressure
  end

end

class Auto < WheeledVehicle
  include Fuel

  def initialize
    # 4 tires are various tire pressures
    super([30,30,32,32], 50, 25.0)
  end
end

class Motorcycle < WheeledVehicle
  include Fuel

  def initialize
    # 2 tires are various tire pressures along with
    super([20,20], 80, 8.0)
  end
end

# Now Alan has asked them to incorporate a new type of vehicle into their
# system - a Catamaran defined as follows:

class Boat
  attr
end

class Catamaran < Boat
  include Fuel

  attr_accessor :propeller_count, :hull_count

  def initialize(num_propellers, num_hulls, km_traveled_per_liter,
                 liters_of_fuel_capacity)
    self.fuel_efficiency  = km_traveled_per_liter
    self.fuel_capacity    = liters_of_fuel_capacity
  end
end

class Motorboat < Boat
  include Fuel


end

yacht = Catamaran.new(2, 2, 20, 10.0)
puts yacht.range

bike = Motorcycle.new
puts bike.range
