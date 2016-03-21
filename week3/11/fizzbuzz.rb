require 'minitest/autorun'  # => true
require 'minitest/pride'    # => true

# Write a method which returns:
#
#   * "Fizz" if the number is divisible by 3
#   * "Buzz" if the number is divisible by 5
#   * "FizzBuzz" if the number is divisible by 3 and 5
#   * Otherwise, return the number itself
#
# Remember that the % operator (modulo) is your friend.  It returns a zero if one
# number is divisible by another number.  In other words, 4 % 2 == 0.

# WRITE YOUR CODE HERE.  Name your method `fizzbuzz`.

def fizzbuzz(num)
  if num % 3 == 0 && num % 5 == 0
    "FizzBuzz"
  elsif num % 3 == 0
    "Fizz"
  elsif num % 5 == 0
    "Buzz"
  else
    num
  end
end

class IfChallenge < MiniTest::Test  # => Minitest::Test
  def test_one
    assert_equal 1, fizzbuzz(1)
  end                               # => :test_one

  def test_three
    assert_equal "Fizz", fizzbuzz(3)
  end                                 # => :test_three

  def test_five
    assert_equal "Buzz", fizzbuzz(5)
  end                                 # => :test_five

  def test_eight
    assert_equal 8, fizzbuzz(8)
  end                            # => :test_eight

  def test_ten
    assert_equal "Buzz", fizzbuzz(10)
  end                                  # => :test_ten

  def test_fifteen
    assert_equal "FizzBuzz", fizzbuzz(15)
  end                                      # => :test_fifteen

  def test_twenty_three
    assert_equal 23, fizzbuzz(23)
  end                              # => :test_twenty_three

  def test_thirty
    assert_equal "FizzBuzz", fizzbuzz(30)
  end                                      # => :test_thirty
end                                        # => :test_thirty

# >> Run options: --seed 3274
# >>
# >> # Running:
# >>
# >> EEEEEEEE
# >>
# >> Finished in 0.001987s, 4027.0537 runs/s, 0.0000 assertions/s.
# >>
# >>   1) Error:
# >> IfChallenge#test_one:
# >> NoMethodError: undefined method `fizzbuzz' for #<IfChallenge:0x007fba140a9df0>
# >>     /var/folders/_0/87vhxh1x67l3stzmz896b9840000gn/T/seeing_is_believing_temp_dir20160321-68253-19rokh7/program.rb:18:in `test_one'
# >>
# >>
# >>   2) Error:
# >> IfChallenge#test_twenty_three:
# >> NoMethodError: undefined method `fizzbuzz' for #<IfChallenge:0x007fba140a9878>
# >>     /var/folders/_0/87vhxh1x67l3stzmz896b9840000gn/T/seeing_is_believing_temp_dir20160321-68253-19rokh7/program.rb:42:in `test_twenty_three'
# >>
# >>
# >>   3) Error:
# >> IfChallenge#test_thirty:
# >> NoMethodError: undefined method `fizzbuzz' for #<IfChallenge:0x007fba140a9468>
# >>     /var/folders/_0/87vhxh1x67l3stzmz896b9840000gn/T/seeing_is_believing_temp_dir20160321-68253-19rokh7/program.rb:46:in `test_thirty'
# >>
# >>
# >>   4) Error:
# >> IfChallenge#test_three:
# >> NoMethodError: undefined method `fizzbuzz' for #<IfChallenge:0x007fba140a9030>
# >>     /var/folders/_0/87vhxh1x67l3stzmz896b9840000gn/T/seeing_is_believing_temp_dir20160321-68253-19rokh7/program.rb:22:in `test_three'
# >>
# >>
# >>   5) Error:
# >> IfChallenge#test_fifteen:
# >> NoMethodError: undefined method `fizzbuzz' for #<IfChallenge:0x007fba140a8bf8>
# >>     /var/folders/_0/87vhxh1x67l3stzmz896b9840000gn/T/seeing_is_believing_temp_dir20160321-68253-19rokh7/program.rb:38:in `test_fifteen'
# >>
# >>
# >>   6) Error:
# >> IfChallenge#test_five:
# >> NoMethodError: undefined method `fizzbuzz' for #<IfChallenge:0x007fba140a8770>
# >>     /var/folders/_0/87vhxh1x67l3stzmz896b9840000gn/T/seeing_is_believing_temp_dir20160321-68253-19rokh7/program.rb:26:in `test_five'
# >>
# >>
# >>   7) Error:
# >> IfChallenge#test_eight:
# >> NoMethodError: undefined method `fizzbuzz' for #<IfChallenge:0x007fba140a8338>
# >>     /var/folders/_0/87vhxh1x67l3stzmz896b9840000gn/T/seeing_is_believing_temp_dir20160321-68253-19rokh7/program.rb:30:in `test_eight'
# >>
# >>
# >>   8) Error:
# >> IfChallenge#test_ten:
# >> NoMethodError: undefined method `fizzbuzz' for #<IfChallenge:0x007fba13973ec8>
# >>     /var/folders/_0/87vhxh1x67l3stzmz896b9840000gn/T/seeing_is_believing_temp_dir20160321-68253-19rokh7/program.rb:34:in `test_ten'
# >>
# >> 8 runs, 0 assertions, 0 failures, 8 errors, 0 skips
