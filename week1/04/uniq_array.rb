# Method that takes a [] and a value
# Shovel value onto array, but only if it's unique

def uniq_array(array, value)
  if array.include?(value)    # => false, false, true, false, true, true
    return array              # => ["1", "2"], ["1", "2", "4"], ["1", "2", "4"]
  else
    return array << value     # => ["1"], ["1", "2"], ["1", "2", "4"]
  end
end                           # => :uniq_array

array = []  # => []

uniq_array(array, "1")          # => ["1"]
uniq_array(array, "2")          # => ["1", "2"]
final = uniq_array(array, "1")  # => ["1", "2"]
final[0]                        # => "1"
uniq_array(array, "4").last     # => "4"
uniq_array(array, "4")[-2]      # => "2"
uniq_array(array, "4")[-3]      # => "1"
