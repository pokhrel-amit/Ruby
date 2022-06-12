# Ruby regular expressions

#also know as ruby regex 
#helps to find specific patterns inside strings with the intent of extracting data for further processing.
# Ruby regular expressions are defined between two forward slashes

# puts "do you like cats" =~ /like/
# This returns the index of the first occurrence of the word if it was found (successful match) or nil otherwis



# character classes

# A character class lets us define a range or a list of characters to match

# does a string contain a vowel ?

def contain_vowel(str)
    str =~ /[aeiou]/
end

puts contain_vowel("tkset") #returns 1
puts contain_vowel("sky") #return nil
# This will not take into account the amount of characters

# Ranges
# We can use ranges to match multiple letters or numbers without having to type them all out. In other words, a range like [2-5] is the same as [2345]

#  Some useful ranges:

# [0-9] matches any number from 0 to 9
# [a-z] matches any letter from a to z (no caps)
# [^a-z] negated range

def contains_number (str)
    str =~ /[0-9]/
end

puts contains_number("this year is 2021") # returns 12
puts contains_number("my name is amit pokhrel") #returns nil

# Remember: the return value when using `=~` is either the string index or `nil`

# There is a nice shorthand syntax for specifying character ranges:

#     \w is equivalent to [0-9a-zA-Z_]
#     \d is the same as [0-9]
#     \s matches white space (tabs, regular space, newline)

# There is also the negative form of these:

#     \W anything that’s not in [0-9a-zA-Z_]
#     \D anything that’s not a number
#     \S anything that’s not a space

# Escaping special characters

puts "5a5".match(/\d.\d/)
puts "5a5".match(/\d\.\d/)
puts "5.5".match(/\d\.\d/)