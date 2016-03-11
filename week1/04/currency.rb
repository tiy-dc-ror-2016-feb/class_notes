"$100.00".chars.first  # => "$"

"$100.00"..first  # => "$"



class CurrencyConvertor
  def initialize(symbol, currency_obj, rates)
    @rates = rates
    @currency_obj = currency_obj
    @symbol = symbol
  end
end
