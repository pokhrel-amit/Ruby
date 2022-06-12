# The extend keyword
# it takes the module methods and add them to class method

# module Announcer
module Announcer
  def who_am_i
    "The name of this class is #{self}"
  end
end

# class Dog
class Dog
  extend Announcer
end

class Cat
  extend Announcer
end

puts Dog.who_am_i

# So the main purpose of this design is,
# if we want the functionality to be added into the class as class method then we can use extend keyword respecting the DRY principle of Ruby


# include Vs prepend Vs extend

# include  takes the module methods and mixes them in inside the class such that all of the objects created from that class will have access to the module method
# prepend does the exact same thing as of include but it give higher priority to the module method then the methods defined on the class
# extend takes the module methods and add them to class level insted of instance level