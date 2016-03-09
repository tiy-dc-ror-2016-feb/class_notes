puts "Give me a palindrome!"
word = gets.chomp
count = 5
until count == 0
 puts "Give me a palindrome!"
 word = gets.chomp
 puts word
 count = count - 1
 if word.reverse == word
   puts "it's a palindrome"
 else
   puts "it's not a palindrome"
 end
end
