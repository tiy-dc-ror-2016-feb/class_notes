# "I want a program that randomly selects a student, but fairly"

students = []
selected_students = []

File.open("./students.txt") do |file|
  file.each do |student|
    students << student.chomp
  end
end

File.open("./selected_students.txt", "r+") do |file|
  file.each do |student|
    selected_students << student.chomp
  end
end

class_participation = {}

students.each do |student|
  class_participation[student] = selected_students.count {|s| s == student }
end

p class_participation

never_picked_students = students - selected_students
picked_student = never_picked_students.sample

p "Out of #{students.length}. #{picked_student} gets to answer"
p "We picked #{selected_students.join(", ")} in the past"

selected_students << picked_student

File.open("./selected_students.txt", "w") do |file|
  selected_students.each do |student|
    file << "#{student}\n"
  end
end
