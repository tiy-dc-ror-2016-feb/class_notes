class Thing
  attr_reader :data  # => nil
  def initialize
    @data = 1        # => 1, 1
  end                # => :initialize

  def ==(other)
    @data == other.data  # => true
  end                    # => :==
end                      # => :==


thing1 = Thing.new  # => #<Thing:0x007fe77292ed00 @data=1>
thing2 = Thing.new  # => #<Thing:0x007fe77292e7b0 @data=1>

thing1 == thing2  # => true

1 == 1  # => true
