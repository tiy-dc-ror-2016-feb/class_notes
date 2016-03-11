require 'pry'

def floop(x)  # ~> ArgumentError: wrong number of arguments (given 0, expected 1)

  binding.pry

  x * x

end  # => :floop

puts floop(12)

# ~> ArgumentError
# ~> wrong number of arguments (given 0, expected 1)
# ~>
# ~> /Users/rposborne/Desktop/class/week1/05/errors.rb:1:in `floop'
# ~> /Users/rposborne/Desktop/class/week1/05/errors.rb:6:in `<main>'
