
# Return values of Enumerables
# its a best practise to avoid bang method since it change the original version

# so what can we do instead ?

# one option is to put the result of an enumerable method into a local variable
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

invited_friends = friends.select { |friend| friend != 'Brian' }

print friends

print invited_friends

# or

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

def invited_friends(friends)
  friends.select { |friend| friend != 'Brian' }
end

print friends

print invited_friends(friends)
