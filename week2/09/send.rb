class Thing

  def self.news

    self.new
  end                                          # => :news

  def call_me_maybe
    self             # => #<Thing:0x007fcda4817828>
    "hello"          # => "hello"
  end                # => :call_me_maybe

  private                      # => Thing
  def nope_you_cannot_call_me
    "Troolllolollolllololl"
  end                          # => :nope_you_cannot_call_me
end                            # => :nope_you_cannot_call_me

Thing.news                         # => "CNN SAYS DONALD TRUMP WILL BE PRESIDENT"
Thing.new.send("call_me_maybe")    # => "hello"
Thing.new.nope_you_cannot_call_me  # ~> NoMethodError: private method `nope_you_cannot_call_me' called for #<Thing:0x007fcda48170d0>

# ~> NoMethodError
# ~> private method `nope_you_cannot_call_me' called for #<Thing:0x007fcda48170d0>
# ~>
# ~> /Users/rposborne/Desktop/class/week2/09/send.rb:21:in `<main>'
