# Accessing Elements
# every element in array has its own index
# calling an invalid position will result in nil

str_arry = ["how", "are", "you", "amit", "pokhrel"]

puts str_arry[0]    #=> how
puts str_arry[1]    #=> are
puts str_arry[4]    #=> pokhrel
puts str_arry[-1]    #=> pokhrel
puts str_arry[-2]    #=> amit


# first and last methods of array

str_arry = ["how", "are", "you", "amit", "pokhrel"]

puts str_arry.first  #=> how
puts str_arry.first( 2 )  #=> ["how", "are" ]
puts str_arry.last(2)  #=> ["amit", "pokhrel"]
