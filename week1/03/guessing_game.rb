#generate random number between 1 and 100
  #and ask you for a guess
#If guess is less, tell you were low and let you guess again.
#If guess is greater, tell you were high and let you guess again.
#If guess is correct, tell you that you win and then quit.
def random_num_generator
  return rand(1..100)
end

input_array = []
num = random_num_generator
count = 0

puts "Guess my random number between 1 and 100."
while count < 5
  user_input = gets.chomp
  count += 1
#control flow order is impt here.
  if count == 5 && user_input.to_i != num
    puts "You lose."
  elsif input_array.include?(user_input)
    puts "Are you ill, Doc? Guess a new number."
  elsif user_input.to_i < num
    puts "You're low, guess again, bub."
    input_array << user_input
  elsif user_input.to_i > num
    puts "You're high, play it again Sam."
    input_array << user_input
  else user_input.to_i == num
    puts "You win!"
    break
  end
  puts input_array.to_s
end

#Other requirements:
#After 5 incorrect guesses, the program should tell you that you lose.
#If guess same number twice, ask you if you're feeling all right
#Your code should include  at least two methods.
#This game should be run from the command line by typing "ruby guessing_game.rb".
