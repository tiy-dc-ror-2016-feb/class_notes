def convert_face_card(user_input)
  user_input = user_input.upcase   # => "3", "7", "Q", "K", "K", "A", "A"

  if "K" == user_input || "Q" == user_input || "J" == user_input  # => false, false, true, true, true, false, false
    return 10                                                     # => 10, 10, 10
  elsif "A" == user_input                                         # => false, false, true, true
    return 11                                                     # => 11, 11
  else
    return user_input.to_i                                        # => 3, 7
  end
end                                                               # => :convert_face_card

convert_face_card("3")  # => 3
convert_face_card("7")  # => 7
convert_face_card("Q")  # => 10
convert_face_card("K")  # => 10
convert_face_card("k")  # => 10
convert_face_card("A")  # => 11
convert_face_card("a")  # => 11
