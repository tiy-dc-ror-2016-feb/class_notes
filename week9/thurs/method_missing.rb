# require 'simple_delegator'  # ~> LoadError: cannot load such file -- simple_delegator

class Person
  attr_reader :name     # => nil
  def initialize(name)
    @name = name        # => "Bob"
  end                   # => :initialize

  def fancy_name
    "#{@name} is fancy"  # => "Bob is fancy"
  end                    # => :fancy_name
end                      # => :fancy_name


class PersonDecorator < SimpleDelegator  # => SimpleDelegator
  def king?
    "#{name} is king"                    # => "Bob is king"
  end                                    # => :king?
end                                      # => :king?

person = PersonDecorator.new(Person.new("Bob"))  # => #<Person:0x007f93c484bf48 @name="Bob">

person.fancy_name  # => "Bob is fancy"
person.king?       # => "Bob is king"



# class PersonDecorator
#   def initialize(person)
#     @person = person      # => #<Person:0x007fb2a30ab2b8 @name="Bob">
#   end                     # => :initialize
#
#   def king?
#     "#{@person.name} is king"  # => "Bob is king"
#   end                          # => :king?
#
#   def method_missing(name, *args)
#     if @person.respond_to?(name)   # => true
#       @person.send(name, *args)    # => "Bob is fancy"
#     else
#       raise NoMethodError
#     end                            # => "Bob is fancy"
#   end                              # => :method_missing
# end                                # => :method_missing
#
# person = PersonDecorator.new(Person.new("Bob"))  # => #<PersonDecorator:0x007fb2a30ab0d8 @person=#<Person:0x007fb2a30ab2b8 @name="Bob">>
#
# person.fancy_name  # => "Bob is fancy"
# person.king?       # => "Bob is king"
