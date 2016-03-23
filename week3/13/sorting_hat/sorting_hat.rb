# "I want a program that randomly selects a student, but fairly"
require 'rubygems'
require 'bundler/setup'
# Dependenices
require 'active_record'

# Program Things
require './db_connection.rb'
require './student'
require './students_and_picks_migration'

StudentsAndPicksMigration.migrate(:up)

#
# students = []
#
# File.open("./students.txt") do |file|
#   file.each_line do |line|
#     row = line.chomp.split(",")
#     students << Student.new(name: row[0], count: row[1])
#   end
# end
#
# lowest_participation = students.map{ |s| s.count }.min
#
# students_on_deck = students.select { |student| student.count == lowest_participation }
#
# picked_student = students_on_deck.sample
#
# p "Out of #{students.length}. #{picked_student.name} gets to answer!"
# # p "We picked #{selected_students.join(", ")} in the past"
#
# # picked_student
# picked_student.pick!
#
# #
# File.open("./students.txt", "w") do |file|
#   students.each do |student|
#     file << "#{student.name},#{student.count}\n"
#   end
# end
