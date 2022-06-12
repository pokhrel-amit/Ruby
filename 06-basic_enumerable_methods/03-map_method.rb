# The map method

# suppose we want all CAPS

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
shouting_at_friends = []

friends.each { |friend| shouting_at_friends.push(friend.upcase) }
print shouting_at_friends

# the above method is more clunky but we can use #map enumerable method
# The #map method (also called #collect) transforms each element from an array according to whatever block we pass to it and returns the transformed elements in a new array.

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

k = friends.map { |friend| friend.upcase }
print k


# gsub!
my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']

# my_order.map { |item| item.gsub('medium', 'extra large' ) }
my_order.map { |item| item.gsub!('medium', 'extra large') }
puts my_order


salaries = [1200, 1500, 1100, 1800]

k=salaries.map { |salary| salary-700 }
puts k
puts salaries
