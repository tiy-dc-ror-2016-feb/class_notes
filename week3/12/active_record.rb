require 'rubygems'
require 'bundler/setup'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db.sqlite3'
)

class DeveloperMigration < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :name
      t.string :email
      t.date :start_on
    end
  end
end

DeveloperMigration.migrate(:up)
