class Vehicle

  def initialize
    @engine = Engine.new  # => #<Engine:0x007faad20ce0c0 @cylinders=8, @running=false>
  end                     # => :initialize

  def start!
    @engine.start!  # => true, nil
  end               # => :start!
end                 # => :start!

class Engine
  attr_reader :cylinders  # => nil

  def initialize
    @cylinders = 8    # => 8
    @running = false  # => false
  end                 # => :initialize

  def start!
    unless @running                   # => false, true
      p "engerize fuel system"        # => "engerize fuel system"
      p "apply power to start motor"  # => "apply power to start motor"
      p "appl spark"                  # => "appl spark"
      p "VRRRRRRRROOOOOMMMMMMMMMMM"   # => "VRRRRRRRROOOOOMMMMMMMMMMM"
      @running = true                 # => true
    else
      "already on"
    end                               # => true, nil
  end                                 # => :start!
end                                   # => :start!

russells_car = Vehicle.new  # => #<Vehicle:0x007faad20ce0e8 @engine=#<Engine:0x007faad20ce0c0 @cylinders=8, @running=false>>
russells_car                # => #<Vehicle:0x007faad20ce0e8 @engine=#<Engine:0x007faad20ce0c0 @cylinders=8, @running=false>>
russells_car.start!         # => true
russells_car.start!         # => nil

# >> "engerize fuel system"
# >> "apply power to start motor"
# >> "appl spark"
# >> "VRRRRRRRROOOOOMMMMMMMMMMM"
