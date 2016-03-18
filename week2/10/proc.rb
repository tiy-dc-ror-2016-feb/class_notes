def call_the_proc(x)
  p "Before the lambda"  # => "Before the lambda"
  x.call
  p "After the lambda"
end                     # => :call_the_proc


def other_method
  hi = lambda {return p "Hi, I'm a Proc"}  # => #<Proc:0x007ffccd806c00@/Users/rposborne/Desktop/class/week2/10/proc.rb:9>
  call_the_proc(hi)
end                                          # => :other_method

other_method  # => "Hi, I'm a Proc"

# >> "Before the lambda"
# >> "Hi, I'm a Proc"
