# names = ["Nadia", "Mike", "Bo", "Steven", "Sam"]  # => ["Nadia", "Mike", "Bo", "Steven", "Sam"]
#
#
#
# s_names = names.all? do |name|
#   name[0] == "S"
# end
#
# p s_names
#
numbers = [1,2,3,4]  # => [1, 2, 3, 4]

# numbers.sum
x = numbers.reduce(0) { |a, num|  # => [1, 2, 3, 4]
    a + num                       # => 1, 3, 6, 10
}                                 # => 10

# a, el
# 0 , 1
#

p x  # => 10

# >> 10
