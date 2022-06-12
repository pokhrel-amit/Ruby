# Chainging Methods

phrase = ["be", "to", "not", "or", "be", "to"]

puts phrase.reverse.join(" ").capitalize

# Predicate Methods
# the question mark(?) at the end of ruby methods, such as even? , odd? , etc are all predicate methods
# they return either true or false

puts 10.even?
puts 17.odd?

puts 13.between?(10,15)


# Bang Methods

whisper = "HELLO EVERYBODY"

puts whisper.downcase #=> "hello everybody"
puts whisper #=> "HELLO EVERYBODY"

# though we changed it to downcase, it again came to its original form
# so, if we want to overwrite the original value on the object then 

whisper = whisper.downcase

# or use bang method
# just add an exclamation mark at then end of the method

puts whisper.downcase!
puts whisper