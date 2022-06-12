# The each_with_index method

# this is same as #each method but with added functionality
# it provides two variables
# one holds the element itself and another one hold the index of that element

fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.each_with_index { |fruit, index| puts fruit if index.even? }

# Just like with the #each method, #each_with_index returns the original array it’s called on.