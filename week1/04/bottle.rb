class Bottle

  def initialize(lid_open, amount_of_liquid)
    @lid_open = lid_open                      # => false, true
    @amount_of_liquid = amount_of_liquid      # => 12.8, 18.6
  end                                         # => :initialize

  def amount_of_liquid
    @amount_of_liquid   # => 12.8, 18.6, 13.4
  end                   # => :amount_of_liquid

  def amount_of_liquid=(new_amount)
    @amount_of_liquid  = new_amount
  end                                # => :amount_of_liquid=

  def fill_up(new_amount)
    if new_amount > 0                  # => true
      puts "fillerup"                  # => nil
      @amount_of_liquid += new_amount  # => 22.8
    end                                # => 22.8

  end  # => :fill_up

  def take_sip(size_of_sip = 2.6)
    @amount_of_liquid -= size_of_sip  # => 16.0, 13.4
  end                                 # => :take_sip

  def full?
    @amount_of_liquid  # => 12.8, 18.6
  end                  # => :full?

  def empty?
    @amount_of_liquid  # => 12.8, 18.6
  end                  # => :empty?

  def open?
    @lid_open  # => false, true
  end          # => :open?

  def closed?
    @lid_open == false  # => true, false
  end                   # => :closed?

end  # => :closed?



# >> fillerup
