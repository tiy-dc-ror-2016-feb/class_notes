# "I want a program that randomly selects a student, but fairly"
require 'rubygems'
require 'bundler/setup'
# Dependenices
require 'active_record'
require 'pry'
require 'sinatra'
require 'json'

# Program Things
require './db_connection.rb'
require './student'
require './pick'
require './students_and_picks_migration'

before do
  content_type "application/json"
end

get '/students' do
  Student.all.to_json
end

get '/students/:id' do
  student = Student.find(params["id"])

  student.to_json
end

post '/pick' do
  return Student.fairly_pick.to_json
end
