# Nested collections

# Nested Arrays
# An array that contains other arrays is called a nested array, or a multidimensional array.

test_scores = [
    [97, 76, 79, 93],
    [79, 84, 76, 79],
    [88, 67, 64, 76],
    [94, 55, 67, 81]
  ]
  
  teacher_mailboxes = [
    ["Adams", "Baker", "Clark", "Davis"],
    ["Jones", "Lewis", "Lopez", "Moore"],
    ["Perez", "Scott", "Smith", "Young"]
  ]

#   Accessing Elements
puts teacher_mailboxes[0][0]

# We can also use negative indices to return elements from the end of an array, starting at [-1]
puts teacher_mailboxes[0][-1]

puts teacher_mailboxes[-1][0]


# If wetry to access an index of a nonexistent nested element, it will raise an NoMethodError, because the nil class does not have a [] method
# puts teacher_mailboxes[3][0] #NoMethodEroor

# If we want a nil value returned when trying to access an index of a nonexistent nested element, we can use the #dig method
puts teacher_mailboxes.dig(4, 0)



# Creating a new nested array
# To create an array of mutable objects (string, array, hash, etc), we will need to pass the default value for Array.new via a block, using curly braces, instead of the second optional argument

mutable = Array.new(3, Array.new(2))
#=> [[nil, nil], [nil, nil], [nil, nil]]
mutable[0][0] = 1000    #=> 1000
print mutable #=> [[1000, nil], [1000, nil], [1000, nil]]


# Adding and Removing Elements
# we can add another element to the end of nested array using the #push method or the shovel operator <<. 

test_scores << [100, 99, 98, 97]
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]
test_scores[0].push(100)
#=> [97, 76, 79, 93, 100]
test_scores
#=> [[97, 76, 79, 93, 100], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]


# Using this similar syntax, twe can add or remove elements from the entire nested array or from a specific nested element.
test_scores.pop
#=> [100, 99, 98, 97]
test_scores[0].pop
#=> 100
test_scores
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]