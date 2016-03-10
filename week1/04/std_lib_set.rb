require('set')  # => true


array = Array.new  # => []
hash = Hash.new    # => {}
set = Set.new      # => #<Set: {}>

set << 1  # => #<Set: {1}>
set << 1  # => #<Set: {1}>
set << 2  # => #<Set: {1, 2}>

set.to_a  # => [1, 2]
