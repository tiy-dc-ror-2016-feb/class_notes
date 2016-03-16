class Doubler
  def dbl(number_to_double)
    number_to_double * 2     # => 6, 18, 4
  end                        # => :dbl
end                          # => :dbl

doubler = Doubler.new  # => #<Doubler:0x007ff84b1562b0>

doubler.object_id  # => 70352194154840
doubler.dbl(3)     # => 6
doubler.dbl(9)     # => 18
doubler.dbl(2)     # => 4
