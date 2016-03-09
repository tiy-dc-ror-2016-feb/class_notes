phone_book = []
puts "What is your name, student?"
user_input_name = gets.chomp
puts "What is your phone number?"
user_input_num = gets.chomp

def lookup_number(phone_book, name)
  phone_book.each do |hash|
    if hash["name"] == name
      return hash
    end
  end
end

while user_input_name != "" || user_input_num != ""
 entry = { "name" => user_input_name, "number" => user_input_num }
 phone_book << entry
 puts "What is your name, student?"
 user_input_name = gets.chomp
 puts "What is your phone number?"
 user_input_num = gets.chomp
end

loop do
  puts "Who do you want to call?"
  name_to_lookup = gets.chomp
  if name_to_lookup == ""
    break
  end
  entry = lookup_number(phone_book, name_to_lookup)
  if entry
    puts entry["number"]
  else
    puts "No one in your phonebook with that name, sorry make more friends!"
  end


end
puts phone_book
