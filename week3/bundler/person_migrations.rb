require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db.sqlite3'
)

class PersonMigration < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
    end
  end

end

PersonMigration.migrate(:up)
