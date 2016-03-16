class Currency

end  # => nil

class CurrencyConvertor

end  # => nil

c1 = Currency.new("$100.00")
CurrencyConvertor.new(c1)  # => #<CurrencyConvertor:0x007fd2b4140d00>
