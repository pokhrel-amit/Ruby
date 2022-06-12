
# Adding and Subtracting Arrays
# adding an array will return a new array by concatinating them
a = [1,2,3]
b = [3,4,5]

print "\n #{a+b} "
print "\n #{a.concat(b)}"

# ( - )This method returns a copy of the first array, removing any elements that appear in the second array.
print [1, 1, 1, 2, 2, 3, 4] - [1, 4]  #=> [2, 2, 3]