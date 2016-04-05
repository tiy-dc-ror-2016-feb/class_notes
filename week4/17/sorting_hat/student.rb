require 'active_record'

class Student < ActiveRecord::Base
  has_many(:picks)

  def pick!
    puts "PICKING #{name}"
    Pick.create(student_id: id, picked_at: Time.now)
  end

  def count
    self.picks.count
  end

  def self.fairly_pick
    students = Student.all
    lowest_participation = students.map{ |s| s.count }.min

    students_on_deck = students.select { |student| student.count == lowest_participation }

    picked_student = students_on_deck.sample

    p "Out of #{students.length}. #{picked_student.name} gets to answer!"

    picked_student.pick!

    return picked_student
  end
end
