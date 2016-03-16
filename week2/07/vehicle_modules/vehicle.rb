module Flyable
  def can_fly?
    true
  end
end

module Cargoable
  def cargo?
    true
  end
end

class Vehicle
  SPEED_MODE = 60
  attr_reader :speed

  def initialize(speed)
    @speed = speed
  end                    # => :initialize

  def travel_time(miles)
    miles / speed * SPEED_MODE
  end                     # => :travel_time
end                       # => :travel_time


class Plane < Vehicle
  include Flyable
  include Cargoable
end

class Truck < Vehicle
  include Cargoable
end

class Helicopter < Vehicle
  include Flyable
end
