class Student
    attr_reader :course
    attr_accessor :name, :gpa

    def initialize(name, gpa)
        @name = name
        @gpa = gpa
        @course = "Underwater Basket Weaving"
    end

    def name
      @name
    end

    def turn_in_homework
      puts "#{name} turned in their homework!!!!💩!"
    end

    def go_to_class
      puts "#{name} is headed to #{@course}!"
    end

    def learn
      @gpa += 0.2
      puts "#{name} is learning!"
    end
end

nadia = Student.new("Nadia", 3.5)
mike = Student.new("mike", 3.5)
steve = Student.new("steve", 3.5)
sam = Student.new("steve", 3.5)

mike_s_class = [nadia, mike, steve, sam]

# my_class = [
#     Student.new("Nadia", 3.52),                            # => #<Student:0x007fa542052f78 @name="Nadia", @gpa=3.52, @course="Underwater Basket Weaving">
#     Student.new("JimBob", 3.56),                           # => #<Student:0x007fa5420525f0 @name="JimBob", @gpa=3.56, @course="Underwater Basket Weaving">
#     Student.new("Cheryl", 3.48),                           # => #<Student:0x007fa542051ce0 @name="Cheryl", @gpa=3.48, @course="Underwater Basket Weaving">
#     Student.new("Jesus De Cristo Gomez De La Cruz", 3.50)  # => #<Student:0x007fa5420512e0 @name="Jesus De Cristo Gomez De La Cruz", @gpa=3.5, @course="Underwater Basket Weaving">
# ]                                                          # => [#<Student:0x007fa542052f78 @name="Nadia", @gpa=3.52, @course="Underwater Basket Weaving">, #<Student:0x007fa5420525f0 @name="JimBob", @gpa=3.56, @course="Underwater Basket Weaving">, #<Student:0x007fa542051ce0 @name="Cheryl", @gpa=3.48, @course="Underwater Basket Weaving">, #<Student:0x007fa5420512e0 @name="Jesus De Cristo Gomez De La Cruz", @gpa=3.5, @course="Underwater Basket Weaving">]

mike_s_class = [nadia, mike, steve, sam]

# my_class.last.name = "bob"                                 # => "bob"
my_class.last.learn
my_class.last.go_to_class
my_class.last.turn_in_homework

# my_class.each do |s|
#   puts "#{s.name} is taking #{s.course} and currently has a grade of #{s.gpa}"
# end
