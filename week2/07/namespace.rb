module Tacocat
  class Taco
    def eat
      "Eat another taco"  # => "Eat another taco"
    end                   # => :eat
  end                     # => :eat

  class Cat
    def meow
      "Have a Taco"  # => "Have a Taco"
    end              # => :meow
  end                # => :meow
end                  # => :meow

class ISO3166::Country
  def meow
    "Meow"
  end       # => :meow
end         # => :meow

class Cat
  def meow(args)
    "MeowMeow"  # => "MeowMeow"
  end           # => :meow

  def purr
    "I am plotting to kill you"
  end                            # => :purr
end                              # => :purr

Tacocat::Cat.new.meow  # => "Have a Taco"
Tacocat::Taco.new.eat  # => "Eat another taco"

Cat.new.meow  # => "MeowMeow"
