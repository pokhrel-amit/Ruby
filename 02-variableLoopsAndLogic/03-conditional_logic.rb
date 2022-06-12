# Conditional Logic

# Truthy and Falsy Value

# In ruby, only nil and false values are the Falsy value
# everything else is true in ruby

# Basic Conditional Statement

  if 1 < 2
    puts "You are right"
  end

# If there is only one line of code to be evaluated inside the block, 
# then we can rewrite the code to be more precise and take up only one line:

puts "1 is less than 2" if 1 < 2

# if ......elsif.....else statement

a = 10

if a <5
    puts "number is less than 5"
elsif a == 5
    puts "numnber is equal to 5"
else
    puts "number is greater than 5"
end

# Boolean Logic
# To determine whether an expression evaluates to true or false, we’ll need a comparison operator.

# == (equals) returns true if the values compared are equal.
# != (not equal) returns true if the values compared are not equal.
# > (greater than) returns true if the value on the left of the operator is larger than the value on the right.
# >= (greater than or equal to) returns true if the value on the left of the operator is larger than or equal to the value on the right.
# <= (less than or equal to) returns true if the value on the left of the operator is smaller than or equal to the value on the right.

# eql? checks both the value type and the actual value it holds.
puts 5.eql?(5.0) #false bcz they are integer and float
puts 5.eql?(5)   # true

# equal? checks whether both values are the exact same object in memory.
# Two variables pointing to the same number will usually return true.
a = 5
b = 5
puts a.equal?(b) # true

# but
a = "hello"
b = "hello"
puts a.equal?(b) #=> false


# <=> (spaceship operator) returns the following:

#     -1 if the value on the left is less than the value on the right;
#     0 if the value on the left is equal to the value on the right; and
#     1 if the value on the left is greater than the value on the right.

puts 5 <=> 10    #=> -1
puts 10 <=> 10   #=> 0
puts 10 <=> 5    #=> 1


# Logical Operators
# if we want to write more than one conditions then it is used
# &&, || , !(not)

if 1 < 2 && 5 < 6
    puts "you are right"
end

# short circuit evalutaion
    # for && operator, if first expression is false then second expression is not checked
    # for || operator, if first expression is true then second expression is not checked

# Case Statements

# Case statements process each condition in turn, 
# and if the condition returns false, it will move onto the next one until a match is found. 
# An else clause can be provided to serve as a default if no match is found.

grade = 'F'

did_i_pass = case grade #=> create a variable `did_i_pass` and assign the result of a call to case with the variable grade passed in
  when 'A' then puts "Pass"
  when 'D' then puts "very bad"
  else puts "'Fail"
end
puts did_i_pass

# we can remove then keyword for complex code manipulation
grade = 'F'

case grade
when 'A'
  puts "Pass"
when 'D'
  puts "Very bad"
else
  puts "Fail"
end


# Unless Statement
# works opposite of if statement
age = 20
unless age <17
    puts "you can vote"
end


# Ternanry Operator
age = 18
can_vote = age > 17 ? "you can vote !" : "you can't vote!"
puts can_vote






