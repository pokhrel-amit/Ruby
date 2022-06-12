class Gadget
end



 phone = Gadget.new
 laptop = Gadget.new
 microwave = Gadget.new

#  puts Gadget.superclass
#  puts phone.class.ancestors

puts phone #will give the memory address of the object

puts phone.methods.sort #these are all the methods that phone object already has(inheritate from object class above it)

puts phone.is_a?(Gadget) #if an object inherites something from the class above it then it will give true
puts phone.is_a?(Object)
puts phone.is_a?(BasicObject)


# respond_to?
# take arguments of a symbol that represents a method name

puts phone.respond_to?(:class)# read it as...can my  phone object respond to a method called class
puts phone.respond_to?(:is_a?)
puts phone.respond_to?(:length)