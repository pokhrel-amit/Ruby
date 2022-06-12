# Object attributes and Methods

# Instance variables (attributes) are variables that belong to the object
# Attributes provide information about the object's current state.  
# for e.g a book might be ripped off, or it might be 3 yrs old.
# Attributes are descriptive detailes or characterstics or properties about the object.Its just a information about the object
#  for example....a book have this no. of pages, a book has a this author, etc

# Instance method

# they interact with the objects.
# They also belong to the object. 

# classes and objects

# A class is the blueprint, pattern, template or outline for an object
# An object is an instance of the class. It is created from the class
# Instantiation is the process of creating an object from a class
# A class is call an abstract type bcz it hides the complexity of interacting with the datam much lile a method abstracts the complexity of a process

# objects and thier respective classes
# the .class method returns the class the object was construted from
# the object's class is itself another object

puts 3.class 
puts 4.class
puts  3.class ==4.class 

puts "hello world".class
puts [1,2,3].class
puts Hash.new(0).class
puts true.class
puts false.class
puts nil.class
puts (0..9).class
puts //.class
puts Proc.new{}.class
puts lambda{}.class
puts Time.new.class



# Classes and Superclasses

# A superclass is the class that a current class inherits from.
# Inheritance follows an "is-a " structure
# The class that inherits from the superclass is called the subclass
# Every class in Ruby(except BasicObject at the top of the hierarchy) has at least one superclass
# we use .superclass method for this

p 5.class #Integer
p 5.class.superclass    #Numeric
p 5.class.superclass.superclass   #Object
p 5.class.superclass.superclass.superclass #BasicObject
p 5.class.superclass.superclass.superclass.superclass #nil
# p 5.class.superclass.superclass.superclass.superclass.superclass # gives error as undefined method `superclass'




# The .ancestors Method on classes
# It returns an array of all superclasses that the class inherits from

p 5.class.ancestors
p 3.14.class.ancestors
p [1,2,3].class.ancestors



# The .method method
puts 5.methods