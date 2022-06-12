
# Adding and Removing Elements

# adding elements using Push(at the end) , <<(at the end)
# adding elements using unshift(at the beginning of array)
num_arry = [1,2]

num_arry.push( 3, 4 )
print num_arry

num_arry << 5
print num_arry 
num_arry.unshift(0)
print num_arry

# removing elements using pop(at the end)
# removing elements using shift(at the beginning of array)

num_arry = [5,6,7]
num_arry.pop()
print num_arry

num_arry.shift()
print num_arry

# pop and shift can also take the integer argument
num_array = [1, 2, 3, 4, 5, 6]

print num_array.pop(3)          #=> [4, 5, 6]
print num_array.shift(2)        #=> [1, 2]
print num_array                 #=> [3]
