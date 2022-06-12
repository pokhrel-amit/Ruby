# Enumerables

# they are a set of convenient built-in methods in Ruby that are included as part of both arrays and hashes

# The each Method
# Calling #each on an array will iterate through that array and will yield each element to a code block, where a task can be performed

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.each{ |friend| puts "hello, " + friend }

# here, friends is the array that contains strings of our friends’ names.
# .each is the enumerable method we are calling on our friends array.
# { |friend| puts "Hello, " + friend } is a block, and the code inside this block is run for each element in our array.
# |friend| is a block variable

# if a block requires more logic than can fit on one line then use do...end instead of {...}

my_array = [1, 2]

my_array.each do |num|
  num *= 2
  puts "The new number is #{num}."
end

# each also works for hashes 
my_hash = { "one" => 1, "two" => 2 }

my_hash.each { |key, value| puts "#{key} is #{value}" }
print my_hash

# or

my_hash.each{ |pair| puts "the pair is #{pair}" }

# NOTE: each method don't change the original array
