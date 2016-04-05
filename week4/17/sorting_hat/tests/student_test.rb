require "./tests/test_helper"

class StudentTest < Minitest::Test

  def setup
    @student = Student.create(name: "Bob")
  end

  def teardown
    @student.destroy
    # Student.delete_all
  end

  def test_student_exists
    assert Student
  end

  def test_student_can_be_created
    refute_equal nil, @student.id
  end

  def test_student_class_will_pick_random_student
    picked_student = Student.fairly_pick

    assert_equal Student, picked_student.class

    assert_equal picked_student.id, Pick.last.student_id
  end
end
