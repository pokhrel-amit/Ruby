# Input and Output

# output commands
# puts
# It adds a new line for every puts statement.
# converts everything into string
# call the to_s method on the object
# always return nil
puts 1
puts 2
puts 3


# print
# it doesn't add any new line
# always return nil
# call the to_s method on the object

print 1
print 2 
print 3


# Input Command

# we use gets command to accept input from user
# program execution will stop and wait for user input. 
# After the user presses Enter, the program will continue its execution.

puts "enter your name"
your_name = gets
puts "your name is " << your_name


