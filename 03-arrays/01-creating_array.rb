#  Arrays
# An array can contain any combination of variables, numbers, strings, or other Ruby objects (including other arrays)
# it is better to keep similar data types in any one array

# creating Arrays
num_arry = [1, 2, 3, 4, 5]
str_arry = ["how", "are", "you"]

# array can be created by calling the Array.new method

Array.new               #=> []
Array.new(3)            #=> [nil, nil, nil]
Array.new(3, 7)         #=> [7, 7, 7]
Array.new(3, true)      #=> [true, true, true]
