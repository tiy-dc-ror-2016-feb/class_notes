
def fav_animal
  ["dog", "cat", "panda", "goat", "horse"].each do |thing|  # => ["dog", "cat", "panda", "goat", "horse"]
    p thing                                                 # => "dog", "cat", "panda"
    yield(thing)                                            # => nil, nil
  end
end                                                         # => :fav_animal

def other_method
  fav_animal do |animal|
    return animal if animal == "panda"  # => false, false, true
  end
end                                     # => :other_method

other_method  # => "panda"

# >> "dog"
# >> "cat"
# >> "panda"
