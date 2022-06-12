# what is an instance variable ?

# Instance variables are variables that belong to a specific object
# It define the object's properties or attributes
# The instance variables make up the object's state
# Each object can have a custom state
# The state of an object can change over time

 
# Define an Instance Variable
# Instace variable begin with @ symbol
# @ symbol is called a sigil , a special character that denotes the variable's scope

 
# The initialize method
#  it is called immediately when an object is instantiated from a class with the new method

class Gadget
    def initialize
        @username = "User #{rand(1..100)}"
        @password = "topsecret"
        @production_number = "#{("a".."z").to_a.sample}-#{rand(1..99)}"
    end
end

phone = Gadget.new
p phone #or puts phone.inspect
p phone.instance_variables

laptop = Gadget.new
p laptop 
p laptop.instance_variables



