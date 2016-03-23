class Pick < ActiveRecord::Base

  def student
    Student.find(self.student_id)
  end
end
