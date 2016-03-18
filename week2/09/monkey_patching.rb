class String
  def reverse
    new_string = ""
    self.each_char do |chr|
       new_string += chr unless ["a", "e", "i", "o", "u"].include?(chr.downcase)
    end
    new_string
  end  # => :devowel
end

class Fixnum
  def -(other)
    self + other  # => 2
  end             # => :-
end               # => :-


# p "I AM RUSSELL HEAR ME ROAR!".reverse
