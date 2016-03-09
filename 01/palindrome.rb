# I CAN BE WHATEVER I WANT TO BE.
# blah!
# TODO:
# HACK
# FIXME

count = 5
until count == 0
  puts "Give me palindrome!"
  word = gets.chomp
  count = count - 1
  if word.reverse == word
    puts word + " is a palindrome!"
  else
    puts word + " is not a palindrome"
  end
end
