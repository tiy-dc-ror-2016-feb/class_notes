require 'pry'  # => true

class Blog
  def title
    "Treehouse Blog"  # => "Treehouse Blog"
  end                 # => :title
end                   # => :title

# require 'minitest'  # => true

class TestBlog < Minitest::Test  # => Minitest::Test

  def setup
    @blog = Blog.new  # => #<Blog:0x007fb7e1bbac38>
  end                 # => :setup

  def test_title_is_treehouse
    assert_equal "Treehouse Blog", @blog.title  # => true
  end                                           # => :test_title_is_treehouse
end                                             # => :test_title_is_treehouse

# >> Run options: --seed 8418
# >>
# >> # Running:
# >>
# >> .
# >>
# >> Finished in 0.001022s, 978.7982 runs/s, 978.7982 assertions/s.
# >>
# >> 1 runs, 1 assertions, 0 failures, 0 errors, 0 skips
