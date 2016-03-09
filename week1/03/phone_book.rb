phone_book = {}
puts "What is your name, student?"
user_input_name = gets.chomp
puts "What is your phone number?"
user_input_num = gets.chomp
puts "What is your email?"
user_input_email = gets.chomp

while user_input_name != ""
  user_phone_numbers = user_input_num.split(",")
 phone_book[user_input_name] = {"numbers" => user_phone_numbers, "email" => user_input_email }
 puts phone_book
 # Ask for new name / number
 puts "What is your name, student?"
 user_input_name = gets.chomp
 puts "What is your phone number?"
 user_input_num = gets.chomp
 puts "What is your email?"
 user_input_email = gets.chomp
end

loop do
  puts "Who do you want to call?"
  name_to_lookup = gets.chomp
  if name_to_lookup == ""
    break
  end
  entry = phone_book[name_to_lookup]

  if entry
    puts "#{name_to_lookup}'s email is #{entry["email"]}"
    puts "Numbers"
    numbers = entry["numbers"]
    puts "They have #{numbers.length} numbers"
    numbers.each do |number|
      puts number
    end
  else
    puts "No one in your phone_book with that name, sorry make more friends!"
  end


end
