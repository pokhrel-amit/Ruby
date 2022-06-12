# The reduce method

# Also known as #inject
# it reduces an array or hash down to a single object
# We should use #reduce when we want to get an output of a single value.

# lets say we want to have sum of arrays
# lets use #each method

my_numbers = [5, 6, 7, 8]
sum = 0

my_numbers.each { |number| sum += number }

print sum

# now lets use #reduce
my_numbers = [5, 6, 7, 8]

sum = my_numbers.reduce { |sum, number| sum + number }
puts sum

# The first block variable in the #reduce enumerable (sum in this example) is known as the accumulator.
# The result of each iteration is stored in the accumulator and then passed to the next iteration. 
# The accumulator is also the value that the #reduce method returns at the end of its work
# By default, the initial value of the accumulator is the first element in the collection
# so for each step of the iteration, we would have the following:

#     Iteration 0: sum = 5 + 6 = 11
#     Iteration 1: sum = 11 + 7 = 18
#     Iteration 2: sum = 18 + 8 = 26

# we can also set the different initial value for accumulator

my_numbers = [5, 6, 7, 8]

sum = my_numbers.reduce(1000) { |sum, number| sum + number }

print sum

