class Array
  def our_map
    results = []
    self.each do |thing|
      puts "running the block"
      results << yield(thing)
      puts "ran the block"
    end
    results
  end                           # => :our_map

  def our_select
    results = []
    self.each do |thing|
      results << thing if yield(thing)
    end
    results
  end                                   # => :our_select

  def our_reduce(x)
    i = 0                                        # => 0
    acumulator = x                               # => ""
    self.each do |thing|                         # => ["Mike", "Nadia", "BobTheJerk"]
      acumulator = yield(acumulator, thing, i )  # => "MikeMikeMikeMikeMike", "MikeMikeMikeMikeMikeNadiaNadiaNadiaNadiaNadia", "MikeMikeMikeMikeMikeNadiaNadiaNadiaNadiaNadiaBobTheJerkBobTheJerkBobTheJerkBobTheJerkBobTheJerk"
      i = i + 1                                  # => 1, 2, 3
    end                                          # => ["Mike", "Nadia", "BobTheJerk"]
    acumulator                                   # => "MikeMikeMikeMikeMikeNadiaNadiaNadiaNadiaNadiaBobTheJerkBobTheJerkBobTheJerkBobTheJerkBobTheJerk"
  end                                            # => :our_reduce
end                                              # => :our_reduce

p ["Mike", "Nadia", "BobTheJerk"].our_reduce("") {|a, name, index| a + (name * 5)}  # => "MikeMikeMikeMikeMikeNadiaNadiaNadiaNadiaNadiaBobTheJerkBobTheJerkBobTheJerkBobTheJerkBobTheJerk"

p ["Mike", "Nadia", "BobTheJerk"].select {|name| name.length > 5}  # => ["BobTheJerk"]

# p [1,2,3,4].our_map {|n| n * n }  # => [1, 4, 9, 16]
#
# def upcase_array_of_strings
#   p "Run the entire map"                                    # => "Run the entire map"
#   ["Mike", "Nadia", "BobTheJerk"].our_map {|name| p name.upcase }  # => ["MIKE", "NADIA", "BOB"]
#   p "Ran the entire map"                                    # => "Ran the entire map"
# end                                                         # => :upcase_array_of_strings
#
# upcase_array_of_strings  # => "Ran the entire map"
#
# # >> "Run the entire map"
# # >> running the block
# # >> "MIKE"
# # >> ran the block
# # >> running the block
# # >> "NADIA"
# # >> ran the block
# # >> running the block
# # >> "BOB"
# # >> ran the block
# # >> "Ran the entire map"

# >> "MikeMikeMikeMikeMikeNadiaNadiaNadiaNadiaNadiaBobTheJerkBobTheJerkBobTheJerkBobTheJerkBobTheJerk"
# >> ["BobTheJerk"]
