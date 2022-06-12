
# Creating Hashes

my_hash = {
    "a random word " => "helloo",
    "amit maths score" => 94,
    "an array" => [1,2,3],
    "an empty hash within a hash" => {}
}
 
# hashes can contain numbers, strings, an array, or even another hash
# key and values are associated with a special operator called a hash rocket =>

# we can also create hash using new method on the hash class

my_hash = Hash.new
puts my_hash    # => {}


hash = {
    9 => "nine",
    :six => 6
}
puts hash