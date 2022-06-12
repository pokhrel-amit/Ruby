# Variable

# Declaring a Variable

# creating a variable
age = 18     #=> 18

# can also assign result of an expression
age = 20 + 5 #=> 25 can also assign result of an expression

# can also use sorthand assignment like +=, *= , /= , -=
age = 20
age += 5
puts age


# Naming a variable
# we should use snake_case writing

# variables in Ruby acts as a references
desired_location = "Barcelona"
johns_location = desired_location

puts desired_location  #=> "Barcelona"
puts johns_location    #=> "Barcelona"

# if we modify the variable desired_location then johns_location will also be modified
johns_location.upcase!  #=> "BARCELONA"

puts desired_location        #=> "BARCELONA"
puts johns_location          #=> "BARCELONA"
