# Merging two hashes

hash1 = {
    "a" => 100,
    "b" => 200
}

hash2 = {
    "b" => 254,
    "c" => 300
}

print hash1.merge(hash2)

# the values from the hash getting merged i.e hash2 will overwirite the values of the hash getting when two hashes have a key that are same
