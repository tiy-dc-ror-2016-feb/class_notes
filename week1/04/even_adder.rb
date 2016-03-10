class EvenAdder

  def initialize(value)
    @value = value       # => 1, 5, 2, 4, 6
  end                    # => :initialize

  def value
    @value   # => 1, 5, 4, 4, 1
  end        # => :value

  def +(other)
    if @value.even? && other.value.even?   # => true, false, false, false
      EvenAdder.new(@value + other.value)  # => #<EvenAdder:0x007feb72006008 @value=6>
    else
      false                                # => false, false, false
    end                                    # => #<EvenAdder:0x007feb72006008 @value=6>, false, false, false
  end                                      # => :+

end  # => :+


a = EvenAdder.new(1)  # => #<EvenAdder:0x007feb72007f98 @value=1>
b = EvenAdder.new(5)  # => #<EvenAdder:0x007feb72007ae8 @value=5>

a.value  # => 1
b.value  # => 5

 c = EvenAdder.new(2)  # => #<EvenAdder:0x007feb72006e68 @value=2>
 d = EvenAdder.new(4)  # => #<EvenAdder:0x007feb720069b8 @value=4>
c + d + a              # => false
a.+(b)                 # => false
a + b                  # => false
