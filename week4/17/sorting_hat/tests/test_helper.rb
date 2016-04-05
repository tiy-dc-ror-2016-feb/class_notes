# require "rubygems"
# require "bundler/setup"
require "active_record"
require "minitest/autorun"
require "sinatra"
require "rack/test"

require "./student"
require "./pick"
require "./students_and_picks_migration"

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'test.sqlite3'
)

# StudentsAndPicksMigration.migrate(:up)
