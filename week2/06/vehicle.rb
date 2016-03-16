require "minitest/autorun"  # => true

class Vehicle
  def initialize(color, num_of_wheels, motors = 4)
    @color = color                                  # => "Red", "Red"
    @num_of_wheels = num_of_wheels                  # => 4, 4
    @motors = motors                                # => 90, 90
  end                                               # => :initialize

  def hack_into_trailer
    @num_of_wheels = 2    # => 2
    @motors = 0           # => 0
    @redneck_mode = true  # => true
  end                     # => :hack_into_trailer

  def jack_up
    @redneck_mode = true  # => true
  end                     # => :hack_into_trailer

  def wheels
    @num_of_wheels  # => 4
  end               # => :wheels

  def motors
    if @redneck_mode  # => nil, true
      @motors * 20    # => 0
    else
      @motors         # => 90
    end               # => 90, 0
  end                 # => :motors

  def motors=(motors)
    @motors = motors
  end                  # => :motors=

  def color
    @color   # => "Red"
  end        # => :color

  def description
    "It's a #{color} car with #{wheels} wheels, and #{motors} motors!"  # => "It's a Red car with 4 wheels, and 90 motors!"
  end                                                                   # => :description
end                                                                     # => :description

class VehicleTest < Minitest::Test  # => Minitest::Test

  def setup
    @vehicle = Vehicle.new("Red", 4, 90)  # => #<Vehicle:0x007fa4329ca350 @color="Red", @num_of_wheels=4, @motors=90>, #<Vehicle:0x007fa4329c8ac8 @color="Red", @num_of_wheels=4, @motors=90>
  end                                     # => :setup

  def test_description
    assert_equal "It's a Red car with 4 wheels, and 90 motors!", @vehicle.description  # => true
  end                                                                                  # => :test_description

  def test_when_turned_into_trailer_has_no_motors
    @vehicle.hack_into_trailer              # => true
    assert_equal 0, @vehicle.motors
  end

  def test_when_jacked_up_apparently_adds_motors?
    @vehicle.jack_up
    assert_equal 90 * 20, @vehicle.motors
  end                        # => :test_redneck_mode_multipies_motors

end  # => :test_redneck_mode_multipies_motors


#
# russells_first_car = Vehicle.new ("Red", 4, 99 )
#
# russells_first_car.wheels
# russells_first_car.motors
# russells_first_car.motors = 5
# russells_first_car.motors
# russells_first_car.color   ==  "Red"
# russells_first_car.hack_into_trailer
# russells_first_car.wheels == 2
# russells_first_car.motors
# russells_first_car.wheels
# russells_first_car.color

# >> Run options: --seed 24983
# >>
# >> # Running:
# >>
# >> .F
# >>
# >> Finished in 0.001602s, 1248.3701 runs/s, 1248.3701 assertions/s.
# >>
# >>   1) Failure:
# >> VehicleTest#test_redneck_mode_multipies_motors [/Users/rposborne/Desktop/class/week2/06/vehicle.rb:54]:
# >> Expected: 1800
# >>   Actual: 0
# >>
# >> 2 runs, 2 assertions, 1 failures, 0 errors, 0 skips
