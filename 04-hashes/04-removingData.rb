# Removing Data

# we can use delete method 
# it provide cool functionality of returning the value of the key-value pair that was deleted from the hash.

shoes = {
    "summer" => "sandals",
    "winter" => "boots"
}

shoes.delete( "summer" )
puts shoes

# or
deleted_key = shoes.delete("winter")
puts deleted_key