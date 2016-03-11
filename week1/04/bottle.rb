class Bottle

  def initialize(lid_open, amount_of_liquid)
    @lid_open = lid_open
    @amount_of_liquid = amount_of_liquid
  end                                         # => :initialize

  def amount_of_liquid
    @amount_of_liquid
  end                   # => :amount_of_liquid

  def amount_of_liquid=(new_amount)
    @amount_of_liquid  = new_amount
  end                                # => :amount_of_liquid=

  def fill_up(new_amount)
    if new_amount > 0
      puts "fillerup"
      @amount_of_liquid += new_amount
    end

  end  # => :fill_up

  def take_sip(size_of_sip = 2.6)
    @amount_of_liquid -= size_of_sip
  end                                 # => :take_sip

  def full?
    @amount_of_liquid
  end                  # => :full?

  def empty?
    @amount_of_liquid
  end                  # => :empty?

  def open?
    @lid_open
  end          # => :open?

  def closed?
    @lid_open == false
  end                   # => :closed?

end  # => :closed?
