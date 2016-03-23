require 'active_record'

class Student < ActiveRecord::Base
  has_many(:picks)

  def pick!
    puts "PICKING #{name}"
    Pick.create(student_id: id, picked_at: Time.now)
  end
end
