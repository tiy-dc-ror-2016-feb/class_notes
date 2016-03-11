class Currency
  def initialize(string)
    @orginal = string                                      # => "$1123.04", "€1984.00", "¥1234.00"
    split_money = @orginal.chars                           # => ["$", "1", "1", "2", "3", ".", "0", "4"], ["€", "1", "9", "8", "4", ".", "0", "0"], ["¥", "1", "2", "3", "4", ".", "0", "0"]
    @symbol = split_money.shift                            # => "$", "€", "¥"
    @amount = split_money.join("").to_f                    # => 1123.04, 1984.0, 1234.0
    @symbol_map = {"$" => :USD, "€" => :EUR, "¥" => :JPY}  # => {"$"=>:USD, "€"=>:EUR, "¥"=>:JPY}, {"$"=>:USD, "€"=>:EUR, "¥"=>:JPY}, {"$"=>:USD, "€"=>:EUR, "¥"=>:JPY}
  end                                                      # => :initialize

  def amount
    @amount   # => 1123.04, 1984.0, 1234.0
  end         # => :amount

  def code
    @symbol_map[@symbol]
  end                     # => :code

  def symbol
    @symbol
  end         # => :symbol

  def to_s
    "#{@symbol}#{@amount}"  # => "$1123.04", "$1123.04"
  end                       # => :to_s
end                         # => :to_s

c1 = Currency.new("$1123.04")  # => #<Currency:0x007fc5550117e8 @orginal="$1123.04", @symbol="$", @amount=1123.04, @symbol_map={"$"=>:USD, "€"=>:EUR, "¥"=>:JPY}>
c2 = Currency.new("€1984.00")  # => #<Currency:0x007fc555010208 @orginal="€1984.00", @symbol="€", @amount=1984.0, @symbol_map={"$"=>:USD, "€"=>:EUR, "¥"=>:JPY}>
c3 = Currency.new("¥1234.00")  # => #<Currency:0x007fc554817088 @orginal="¥1234.00", @symbol="¥", @amount=1234.0, @symbol_map={"$"=>:USD, "€"=>:EUR, "¥"=>:JPY}>

c1.amount  # => 1123.04
c2.amount  # => 1984.0
c3.amount  # => 1234.0

c1.to_s                # => "$1123.04"
c1.to_s == "$1123.04"  # => true
