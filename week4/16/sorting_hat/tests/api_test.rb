require "./tests/test_helper"
require "./sorting_hat"

class ApiTest < Minitest::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_students_returns_a_list_of_students
    get '/students'
    json_response = JSON.parse(last_response.body)
    assert_equal "Bo", json_response.first["name"]
  end

  def test_students_can_select_on_student
    get '/students/1'

    student_hash = JSON.parse(last_response.body)
    assert_equal "Bo", student_hash['name']
  end

  def test_pick_will_give_random_student
    post '/pick'
    student_hash = JSON.parse(last_response.body)
    assert_equal true, student_hash.has_key?("id")
  end

  # def test_it_says_hello_world
  #   get '/students'
  #   assert last_response.ok?
  #   assert_equal 'I am Groot', last_response.body
  # end
  #
  # def test_it_says_hello_to_a_person
  #   get '/', :name => 'Simon'
  #   assert last_response.body.include?('Groot')
  #   assert_equal 'I am Groot', last_response.body
  # end
end
