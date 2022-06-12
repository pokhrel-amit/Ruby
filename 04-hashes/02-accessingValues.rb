# Accessing Values

# We can access values in a hash the same way that we access elements in an array
# When we call a hash's value by key, the key goes inside a pair of brackets

shoes = {
    "summer" => "sandals",
    "winter" => "boots"
}

puts shoes["summer"]

# If we try to access a key that doesn’t exist in the hash, it will return nil

puts shoes["hiking"] # => nil

# We can also use fetch method
# this will generate an error if key doesn't exist

# puts shoes.fetch( "hiking" )

# Alternatively, this method can return a default value instead of raising an error if the given key is not found.
puts shoes.fetch("hiking", "hiking boots")

# to change the value
shoes["summer"] = "flip-flop"
puts shoes