require 'minitest/autorun'
require 'minitest/pride'


# WRITE YOUR CODE HERE.

class StringSplitChallenge < MiniTest::Test
  def test_first_name
    assert_equal "Russell", first_name("Russell Osborne")
  end

  def test_last_name
    assert_equal "Osborne", last_name("Russell Osborne")
  end

  def test_one_word_name
    assert_equal "deadmau5", first_name("deadmau5")
    assert_equal "", last_name("deadmau5")
  end

  def test_three_word_name
    assert_equal "John Quincy", first_name("John Quincy Adams")
    assert_equal "Adams", last_name("John Quincy Adams")
  end

  def test_no_word_name
    assert_equal "", first_name("")
    assert_equal "", last_name("")
  end
end

def first_name(name)
  name_array = name.split
  name_array.pop if name_array.size > 1
  name_array.join(" ")
end

def last_name(name)
  if name.split.length == 2
    name.split[1]
  elsif name.split.length == 3
    name.split[2]
  else
    ""
  end
end
