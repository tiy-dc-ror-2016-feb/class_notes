class Animal
  def walk
    "Walking on the moon!"  # => "Walking on the moon!"
  end                       # => :walk

  def eat
    time_to_eat * 30  # => 90, 90
  end                 # => :eat


private  # => Animal

  def time_to_eat
    3              # => 3, 3, 3
  end              # => :time_to_eat
  # def self.repopulate
  #   population = []
  #   10000.times do |x|
  #     population << self.new
  #   end
  #   population
  # end
  #
  #
  # class << self
  #   def repopulate
  #     population = []
  #     10000.times do |x|
  #       population << self.new
  #     end
  #     population
  #   end
  # end
end                # => :time_to_eat

animal = Animal.new  # => #<Animal:0x007fc94989f368>
animal.walk          # => "Walking on the moon!"
animal.eat           # => 90
# animal.time_to_eat   # ~> NoMethodError: private method `time_to_eat' called for #<Animal:0x007f8b0405cee0>
#
class Dog < Animal   # => Animal
  def eating
    time_to_eat      # => 3
  end                # => :eating
end                  # => :eating

dog = Dog.new  # => #<Dog:0x007fc94989dfe0>
dog.eat        # => 90
# dog.time_to_eat  # ~> NoMethodError: private method `time_to_eat' called for #<Dog:0x007fac2a0e9b50>
dog.eating     # => 3
#
# class Poodle < Dog
#   def prance
#     "Prancing like a Poodle"
#   end
#
#   # def time_to_eat
#   #   poodle_factor = 60 * 60 * 6          # => 21600, 21600
#   #   puts "before_time to eat on Poodle"  # => nil, nil
#   #   time = super * poodle_factor         # => 64800, 64800
#   #   puts "after_time to eat on Poodle"   # => nil, nil
#   #   time                                 # => 64800, 64800
#   # end                                    # => :time_to_eat
# end
#
# class ToyPoodle < Poodle
#   def time_to_eat
#     puts "before time_to_eat on ToyPoodle"
#     super
#     puts "after time_to_eat on ToyPoodle"
#     puts "before time_to_eat on ToyPoodle"
#     super
#     puts "after time_to_eat on ToyPoodle"
#   end
# end
#
# ToyPoodle.ancestors
# moose = ToyPoodle.new
# moose.time_to_eat
#
# a = Animal.new
# b = Dog.new
# b.prance
# b.walk
