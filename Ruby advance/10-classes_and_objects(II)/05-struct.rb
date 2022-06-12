# Struct
# its a sort of class with only instance variable
# when we need to do big things like validations, etc then we have to use classes but we try to build a simple framework then we can use struct
# its a compact way to group together a number of attributes,using accessor methods,without creating an explicit class

# class Person
#     attr_accessor:name

#     def initialize(mame)
#         @name = name
#     end
# end

# or using struct

Person = Struct.new(:name)

# In both casses we can use

person = Person.new
puts person.name = 'Name'
