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
