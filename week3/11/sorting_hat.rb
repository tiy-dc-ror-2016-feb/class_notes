# "I want a program that randomly selects a student, but fairly"

students = []

class Student
  attr_reader :name, :count
  def initialize(name:, count:)
    @name = name
    @count = count.to_i
  end

  def pick!
    @count += 1
  end
end

File.open("./students.txt") do |file|
  file.each_line do |line|
    row = line.chomp.split(",")
    students << Student.new(name: row[0], count: row[1])
  end
end

lowest_participation = students.map{ |s| s.count }.min

students_on_deck = students.select { |student| student.count == lowest_participation }

picked_student = students_on_deck.sample

p "Out of #{students.length}. #{picked_student.name} gets to answer!"
# p "We picked #{selected_students.join(", ")} in the past"

# picked_student
picked_student.pick!

#
File.open("./students.txt", "w") do |file|
  students.each do |student|
    file << "#{student.name},#{student.count}\n"
  end
end
