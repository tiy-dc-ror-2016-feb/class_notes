d_array = [
  [1],       # => [1]
  [2]        # => [2]
]            # => [[1], [2]]


d_array.flatten!  # => [1, 2]
d_array           # => [1, 2]


# hash = {"a" => 1}  # => {"a"=>1}
#
# hash.merge!({"b" => 2})  # => {"a"=>1, "b"=>2}
# hash                     # => {"a"=>1, "b"=>2}

#
# if 0.to_b # => false
#   puts true
# else
#   puts false  # => nil
# end           # => nil
#
# # >> false


if "Russell" || false  # => "Russell"
  true                 # => true
end                    # => true
